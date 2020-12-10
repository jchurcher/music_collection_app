class AddAlbumsToArtists < ActiveRecord::Migration[5.2]
  def change
    add_reference :albums, :artist, index: true, foreign_key: true
    change_column_null :albums, :artist_id, false, 1
    Album.reset_column_information
  end
end
