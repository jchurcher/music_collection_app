class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.text :description
      t.string :genre

      t.timestamps
    end
  end
end
