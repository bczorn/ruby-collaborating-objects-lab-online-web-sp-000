class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.entries(@path) - %w[.. .]
  end
  
  def import
    for item in @files
    Song.new_by_filename(item)
    
  end
  
end