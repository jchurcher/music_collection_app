class AddTracksToArtists < ActiveRecord::Migration[5.2]
  def change
    add_reference :tracks, :artist, index: true, foreign_key: true
    change_column_null :tracks, :artist_id, false, 1
    Track.reset_column_information
  end
end
