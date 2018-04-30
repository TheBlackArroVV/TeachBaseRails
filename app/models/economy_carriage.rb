class EconomyCarriage < Carriage
  validates :top_places, :bottom_places, :side_bottom_places, :side_top_places, presence: true
  validates :top_places, :bottom_places, :side_top_places, :side_bottom_places, numericality: { only_integer: true }
end
