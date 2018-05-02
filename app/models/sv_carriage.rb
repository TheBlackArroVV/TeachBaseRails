class SvCarriage < Carriage
  validates :bottom_places, presence: true
  validates :bottom_places, numericality: { only_integer: true }
end