class Train < ApplicationRecord
  has_many :tickets, dependent: :destroy
  has_many :carriages, dependent: :destroy
  belongs_to :route
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id

  validates :number, presence: true

  def number_of_places(type_of_carriage, type_of_places)
    carriages.where(type: type_of_carriage).pluck(type_of_places.to_s.to_sym).sum
  end
end
