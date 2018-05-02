class Carriage < ApplicationRecord
  TYPES = %w[CoupeCarriage EconomyCarriage SeatingCarriage SVCarriage].freeze

  belongs_to :train

  validates :number, uniqueness: { scope: :train_id }

  before_validation :place_a_number

  protected

  def place_a_number
    self.number ||= last_number + 1
  end

  def last_number
    train.carriages.pluck(:number).max || 0
  end
end
