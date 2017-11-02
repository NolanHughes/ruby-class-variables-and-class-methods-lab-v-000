class Song
  attr_accessor :name, :artist, :genre

  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres_array << genre

  end



  @@count = 0
  @@artists = []
  @@genres_array = []
  @@genres_count = {}

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres_array.uniq
  end

  def self.genre_count
    number_of_times = []
    @@genres_array.each do |type|
      number_of_times << @@genres_array.count(type)
      @@genres_count[type] = count #count var
    end

    # @@genres.each do | v |
    #   @@genre_count.store(v, @@genre_count[v]+1)
    # end
  end

end

ary = [1, 2, 2, 2, 2, 4, 4, 3]

genres_array = ["rap", "rap", "pop"]
number_of_times = []

genres_array.each do |type|
  number_of_times << genres_array.count(type)
end

number_of_times
