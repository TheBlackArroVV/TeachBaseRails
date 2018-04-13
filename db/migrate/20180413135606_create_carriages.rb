class CreateCarriages < ActiveRecord::Migration[5.1]
  def change
    create_table :carriages do |t|
      t.string :type_of_carriage
      t.integer :top_places
      t.integer :bottom_places

      t.timestamps
    end
  end
end
