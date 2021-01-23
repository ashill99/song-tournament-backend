class CreateBrackets < ActiveRecord::Migration[6.0]
  def change
    create_table :brackets do |t|
      t.string :name
      t.string :category
     
      t.timestamps
    end
  end
end
