class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :name, null: false
      t.string :length, null: false
      t.string :genre
      t.date :release_date, null: false

      t.timestamps
    end

    add_index :tracks, :name, unique: true
  end
end
