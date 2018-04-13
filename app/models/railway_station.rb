class RailwayStation < ApplicationRecord
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
  has_many :tickets, foreign_key: :start_station_id
  has_many :tickets, foreign_key: :finish_station_id
  has_many :trains, foreign_key: :current_station_id
end
