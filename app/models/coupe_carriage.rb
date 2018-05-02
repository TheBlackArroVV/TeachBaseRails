class CoupeCarriage < Carriage
  validates :bottom_places, :top_places, presence: true
end