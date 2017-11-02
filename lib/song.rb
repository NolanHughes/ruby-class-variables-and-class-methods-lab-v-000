class Song
  attr_accessor :name, :artist, :genre

  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
  end



  @@count = 0
  @@artists = []

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

end
