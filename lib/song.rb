class Song
  attr_accessor :name, :artist

  def intialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    filename.split("-")
    artist = filename[0]
    song = filename[1]
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    serist.add_song(self)
  end

end
