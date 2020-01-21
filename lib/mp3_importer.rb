class MP3Importer
  
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.entries(@path) - %w[.. .]
  
  end
  
  def import
  binding.pry
    Song.new_by_filename(@files)
 
  end
  
end