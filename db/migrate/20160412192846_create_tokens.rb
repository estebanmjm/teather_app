class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.integer :user_id
      t.integer :discount_id
      t.string :code

      t.timestamps null: false
    end
  end
end
