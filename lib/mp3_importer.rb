class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    #  @files = Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }
    files = []
    Dir.new(self.path).each do |file|
      files << file if file.length > 4
    end
    files
  end  

end
