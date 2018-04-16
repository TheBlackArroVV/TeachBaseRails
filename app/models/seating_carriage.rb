class SeatingCarriage < Carriage
  validates :seating_places, presence: true
end