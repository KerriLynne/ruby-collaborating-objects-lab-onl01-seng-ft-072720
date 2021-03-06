class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    # @songs = [] #
    save
  end

  def songs
    Song.all.select {|song| song.artist == self} #
  end

  def add_song(song)
    # self.songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.new(name) #create
    end
  end

  def self.find(name)
    self.all.detect { |artist| artist.name == name}
  end

  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  def print_songs()
    # needed to use collect here- not each
    puts songs.collect {|song| song.name} # took away @songs
  end


end
