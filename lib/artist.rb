require "pry"

#NOTE: Creates new artists
#contains values for all the artists

class Artist
  attr_accessor :name, :genre, :all

  @@all = Array.new

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    songs.map {|item| item.genre}
  end

end
