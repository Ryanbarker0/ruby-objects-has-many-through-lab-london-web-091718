#NOTE: Creates new genres
#contains values for all the genres

class Genre

  attr_accessor :name

  @@all = Array.new

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    songs.map {|item| item.artist}
  end

end
