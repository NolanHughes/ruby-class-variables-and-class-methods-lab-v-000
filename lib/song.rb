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
  @@genre_count = Hash.new(0)

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

    @@genres.each do | v |
      @@genre_count.store(v, @@genre_count[v]+1)
    end
    #

    @@genres.each do |type|

      @@genre_count[type] = count
    end
  end

end

ary = [1, 2, 2, 2, 2, 4, 4, 3]

ary.collect do |num|
  ary.count(num)
end
