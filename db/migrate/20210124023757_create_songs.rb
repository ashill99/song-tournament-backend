class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :album
      t.string :snippet
      t.string :artwork
      t.boolean :round1winner
      t.boolean :round2winner
      t.boolean :round3winner
      t.boolean :round4winner
      t.boolean :round5winner

      t.timestamps
    end
  end
end
