class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :train
  belongs_to :start_station, class_name: 'RailwayStation', foreign_key: :start_station_id
  belongs_to :finish_station, class_name: 'RailwayStation', foreign_key: :finish_station_id

  validates :initials, presence: true
  validates :passport_data, presence: true

  after_create :send_after_buy
  after_destroy :send_after_delete

  def ticket_route
    "#{start_station.name} - #{finish_station.name}"
  end

  private

  def send_after_buy
    TicketsMailer.buy_ticket(self.user, self).deliver_now
  end

  def send_after_delete
    TicketsMailer.delete_ticket(self.user, self).deliver_now
  end
end
