class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.entries(@path) - %w[.. .]
  end
  
  def import
    Song.new_from_filename(files)
  end
  
end