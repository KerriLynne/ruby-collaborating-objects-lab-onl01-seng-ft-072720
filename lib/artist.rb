class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
  end

  def save
    @@all << self
  end  

  def self.all
    @@all
  end

  def add_song(song)
    self.songs << song
  end
end
