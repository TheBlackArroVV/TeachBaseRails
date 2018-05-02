class CoupeCarriage < Carriage
  validates :bottom_places, :top_places, presence: true
  validates :bottom_places, :top_places, numericality: { only_integer: true }
end
