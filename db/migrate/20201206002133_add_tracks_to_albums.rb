class AddTracksToAlbums < ActiveRecord::Migration[5.2]
  def change
    add_reference :tracks, :album, index: true, foreign_key: true
    change_column_null :tracks, :album_id, false, 1
    Track.reset_column_information
  end
end
