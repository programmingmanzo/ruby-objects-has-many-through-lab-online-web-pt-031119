require 'pry'

class Genre

  attr_reader :name, :genre
  attr_accessor :song

  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self 
    #binding.pry 
  end

  def self.all 
      @@all 
  end 
 
  def songs
    Song.all.select do |song|
      song.genre == self
      #binding.pry 
    end
  end
 
  def artists
    Song.all.map do |song|
      song.artist
      #binding.pry 
    end
  end
end