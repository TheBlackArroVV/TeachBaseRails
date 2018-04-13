class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.integer :train_id
      t.integer :start_station_id
      t.integer :finish_station_id
      t.integer :user_id

      t.timestamps
    end
  end
end
