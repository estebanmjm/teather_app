class CreateTeathers < ActiveRecord::Migration
  def change
    create_table :teathers do |t|
      t.string :name
      t.string :address
      t.string :manager
      t.string :mobile
      t.string :phone
      t.string :web_site
      t.string :logo
      t.text :description
      t.string :latitude
      t.string :longitude

      t.timestamps null: false
    end
  end
end
