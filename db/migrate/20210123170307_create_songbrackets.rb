class CreateSongbrackets < ActiveRecord::Migration[6.0]
  def change
    create_table :songbrackets do |t|
      t.belongs_to :song
      t.belongs_to :bracket

      t.timestamps
    end
  end
end
