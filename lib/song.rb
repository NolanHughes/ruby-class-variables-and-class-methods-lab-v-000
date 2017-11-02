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
  end

end

###Work code###
genres_array = ["rap", "rap", "pop"]
number_of_times = []

genres_array.each do |type|
  number_of_times << genres_array.count(type)
end

number_of_times

trial_hash = {}
data = [0,1,2,2,2,2,2,3,3,3,3,3,3,4,4,4,4,5,5,6,6,6,7,7,7,7,7,8,9,9,10]
Hash[*data.group_by{ |v| v }.flat_map{ |k, v| [k, v.size] }]

