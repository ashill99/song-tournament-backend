class CreateSongbrackets < ActiveRecord::Migration[6.0]
  def change
    create_table :songbrackets do |t|
      t.integer :song_id
      t.integer :bracket_id

      t.timestamps
    end
  end
end
