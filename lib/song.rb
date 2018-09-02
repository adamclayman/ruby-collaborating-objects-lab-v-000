class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def new_by_filename(filename)
    data_raw = filename.split(".mp3")
    data = data_raw[0].split(" - ")
    song = Song.new(data[1])
    artist = artist.find_or_create_by_name(data[0])
    song.artist = artist
    song.artist.songs << song
    song.genre = data[2]
  end
end
