require 'pry'
class Genre
attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.genre = self
  end

  def songs
    @songs
  end

  def artists
    songs.map { |song| song.artist}
  end
# binding.pry
end
