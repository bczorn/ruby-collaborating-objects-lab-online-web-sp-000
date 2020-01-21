class MP3Importer
  
  attr_accessor :path
  @@all = []
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.entries(@path) - %w
  end
  
  def import
    Song.new_from_filename
  end
  
end