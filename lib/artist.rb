class Artist
  @@all = []
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end 
  def new_song(name, genre)
    s1=Song.new(name,self,genre)
  end 
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end 
  end
  def self.all
    @@all
  end 
  
  def genres
    songs.map do |song|
      song.genre 
    end 
  end 
end 