class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  # def add_song(song)
  #   Song.all.select {|song| song.artist == self}
  #   @songs << song
  #   song.artist = self
  # end
end
