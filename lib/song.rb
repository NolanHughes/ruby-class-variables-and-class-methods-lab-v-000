class Song
  attr_accessor :name, :artist, :genre

  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist

    # unless @@genres.include?("#{genre}")
      @@genres << genre
    # end

  end



  @@count = 0
  @@artists = []
  @@genres = []

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

  def self.genres
    @@genres
  end

end
