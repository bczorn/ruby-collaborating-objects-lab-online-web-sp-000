class MP3Importer
  
  attr_accessor :path
  @@all = []
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.foreach(@path)
  end
  
  def import
    Song.new_from_filename(@@all)
  end
  
end