class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def new_by_filename(filename)
    data = filename.split(" - ")
    song = Song.new(data[1])
    song.artist = data[0]
    song.artist.songs << song
    song.genre = data[2]
  end
end
