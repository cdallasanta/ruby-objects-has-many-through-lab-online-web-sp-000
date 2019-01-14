class Artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, genre, self)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    genres = []
    songs.each do |song|
      genres << song.genre
    end
    genres
  end
end
