require 'test_helper'

class TrackTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @track = tracks(:one)
  end

  test "should not save empty track" do
    track = Track.new

    track.save
    refute track.valid?
  end

  test "should save valid track" do
    track = Track.new

    track = @track

    track.save
    assert track.valid?
  end

  test "should not save duplicate track title" do
    track1 = Track.new
    track1.name = "My track"
    track1.length = "1:00"
    track1.release_date = "2020-01-01"
    track1.artist = @track.artist
    track1.album = @track.album
    track1.save
    assert track1.valid?

    track2 = Track.new
    track2.name = "My track"
    track2.length = "1:00"
    track2.release_date = "2020-01-01"
    track2.artist = @track.artist
    track2.album = @track.album
    track2.save
    refute track2.valid?
  end

end
