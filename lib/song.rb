class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def new_by_filename(filename)
    data = filename.split(" - ")
    data = data[0,2]
    song = Song.new(data[1])
    artist = artist.find_or_create_by_name(data[0])
    song.artist = artist
    song.artist.songs << song
    song.genre = data[2]
  end
end
