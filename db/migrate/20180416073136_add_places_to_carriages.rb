class AddPlacesToCarriages < ActiveRecord::Migration[5.1]
  def change
    add_column :carriages, :side_top_places, :integer
    add_column :carriages, :side_bottom_places, :integer
    add_column :carriages, :seating_places, :integer
  end
end
