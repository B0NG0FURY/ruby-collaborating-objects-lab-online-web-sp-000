class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.new_by_filename(file)
    file = file.split(" - ")
    song = Song.new(file[1])
    song.artist = file[0]
    song
  end
  
  def artist_name(name)
    Artist.find_or_create_by_name(name)
    
  end
  
  def self.all
    @@all
  end
end