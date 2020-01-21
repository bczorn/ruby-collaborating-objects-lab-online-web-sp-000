class MP3Importer
  
  attr_accessor :path
  @@all = []
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.entries(@path/*.mp3/)
  end
  
  def import
    Song.new_from_filename
  end
  
end