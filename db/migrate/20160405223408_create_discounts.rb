class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.string :name
      t.text :description
      t.integer :teather_id
      t.string :photo

      t.timestamps null: false
    end
  end
end
