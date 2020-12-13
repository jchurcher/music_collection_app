require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @album = albums(:one)
  end

  test "should not save empty album" do
    album = Album.new

    album.save
    refute album.valid?
  end

  test "should save valid album" do
    album = Album.new

    album.title = "My album"
    album.artist = @album.artist

    album.save
    assert album.valid?
  end

  test "should not save duplicate ablum title" do
    album1 = Album.new
    album1.title = "My album"
    album1.artist = @album.artist
    album1.save
    assert album1.valid?

    album2 = Album.new
    album2.title = "My album"
    album2.artist = @album.artist
    album2.save
    refute album2.valid?
  end

end
