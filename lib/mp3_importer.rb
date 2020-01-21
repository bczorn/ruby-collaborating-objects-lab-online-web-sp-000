class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.foreach(@path) do |x|
    end
  end
  
  def import
    Song.new_from_filename
  end
  
end