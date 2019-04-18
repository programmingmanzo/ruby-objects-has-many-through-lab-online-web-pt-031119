require 'pry'

class Artist

   attr_accessor :name, :artist, :genre

   @@all = []

   def initialize(name)
    @name = name
    @@all << self
    #binding.pry 
  end

   def self.all
    @@all 
  end

   def new_song(name, genre)
    song = Song.new(name, self, genre)
    self.songs.last
    #binding.pry 
  end

  def songs
    Song.all.select do |song|
      song.artist == self
      #binding.pry 
    end
  end

  def genres
    Song.all.collect do |song|
      song.genre
      #binding.pry 
    end
  end

 end
