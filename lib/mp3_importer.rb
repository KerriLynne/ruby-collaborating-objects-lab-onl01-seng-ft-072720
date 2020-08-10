class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob(self.path).each {|file| file.gsub ("#{@path}/", "") }

end
