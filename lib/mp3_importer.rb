class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
    files(path)
  end
  
  def files(path)
    Dir.entries(path).select{|file| file.include?(".mp3")}
  end
  
  def import
  end
end