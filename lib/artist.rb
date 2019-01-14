class Artist
  @@all

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, genre, self)
    @songs << song
  end
end
