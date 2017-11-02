class Song
  attr_accessor :name, :artist, :genre

  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre

  end



  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count

    @@genre.each do | v |
      @@genres_count.store(v, h[v]+1)
    end
    # 
    # @@genres.each do |type|
    #   @@genre_count[type] = count
    # end
  end

end
