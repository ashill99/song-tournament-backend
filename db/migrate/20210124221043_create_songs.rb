class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artists
      t.string :album
      t.string :spotify_id
      t.string :image
      t.string :uri
      t.integer :votes 

      t.timestamps
    end
  end
end
