class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :album
      t.string :snippet
      t.string :artwork
      t.column :round1winner, :boolean 
      t.column :round2winner, :boolean 
      t.column :round3winner, :boolean 
      t.column :round4winner, :boolean 
      t.column :round5winner, :boolean 

      t.timestamps
    end
  end
end
