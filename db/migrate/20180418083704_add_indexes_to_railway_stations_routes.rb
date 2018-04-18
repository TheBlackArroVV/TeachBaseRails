class AddIndexesToRailwayStationsRoutes < ActiveRecord::Migration[5.1]
  def change
    add_index :railway_stations_routes, :railwaystation_id
    add_index :railway_stations_routes, :route_id
  end
end
