class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.string :name
      t.text :description
      t.string :place
      t.float :price
      t.string :photo
      t.integer :teather_id

      t.timestamps null: false
    end
  end
end
