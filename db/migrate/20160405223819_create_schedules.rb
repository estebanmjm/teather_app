class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.datetime :initial_day
      t.datetime :last_day
      t.integer :play_id

      t.timestamps null: false
    end
  end
end
