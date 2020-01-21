class MP3Importer
  
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.entries(@path) - %w[.. .]
    puts @files
  end
  
  def import
   puts @files
    Song.new_by_filename(@files)
   
  end
  end
  
end