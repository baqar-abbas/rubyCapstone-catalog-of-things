require_relative 'item'

class MusicAlbum < Item
  attr_accessor :genre, :on_spotify

  def initialize(date, genre, on_spotify)
    super(date)
    @genre = genre
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify
  end

  def move_to_archive
    self.archived = can_be_archived?
  end
end