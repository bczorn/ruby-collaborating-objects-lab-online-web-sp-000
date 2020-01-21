class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.entries(@path) - %w[.. .]
  end
  
  def import
    n = 0
    until n = @files.length
    Song.new_by_filename(@files)
    n+=1
  end
  end
  
end