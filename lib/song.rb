class Song
  attr_accessor :name, :artist, :genre

  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genre << genre

  end



  @@count = 0
  @@artists = []
  @@genres = []
  @@genres_count = {}

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
    # number_of_times = []
    # @@genres_array.each do |type|
    #   number_of_times << @@genres_array.count(type)
    #   @@genres_count[type] = count #count var
    # end
    Hash[*@@genres.group_by{ |v| v }.flat_map{ |k, v| [k, v.size] }]
  end

end

###Work code###
# genres_array = ["rap", "rap", "pop"]
# number_of_times = []
#
# genres_array.each do |type|
#   number_of_times << genres_array.count(type)
# end
#
# number_of_times
#
# trial_hash = {}
# data = [0,1,2,2,2,2,2,3,3,3,3,3,3,4,4,4,4,5,5,6,6,6,7,7,7,7,7,8,9,9,10]
# Hash[*data.group_by{ |v| v }.flat_map{ |k, v| [k, v.size] }]
