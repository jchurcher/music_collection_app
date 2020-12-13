require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save empty artist" do
    artist = Artist.new

    artist.save
    refute artist.valid?
  end

  test "should save valid artist" do
    artist = Artist.new

    artist.name = "My artist"

    artist.save
    assert artist.valid?
  end

  test "should not save duplicate artist title" do
    artist1 = Artist.new
    artist1.name = "My artist"
    artist1.save
    assert artist1.valid?

    artist2 = Artist.new
    artist2.name = "My artist"
    artist2.save
    refute artist2.valid?
  end

end
