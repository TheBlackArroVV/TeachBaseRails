class TicketsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_train, only: [:new, :create]
  before_action :set_ticket, only: [:show, :destroy]

  def index
    @tickets = Ticket.where(user: current_user)
  end

  def new
    @ticket = Ticket.new
    pp @train
  end

  def create
    @ticket = @train.tickets.new(ticket_params)
    @ticket.user = current_user
    @ticket.start_station = @train.route.railway_stations.first
    @ticket.finish_station = @train.route.railway_stations.last

    if @ticket.save
      redirect_to @ticket
    else
      render 'new'
    end
  end

  def show
  end

  def destroy
    @ticket.destroy
    redirect_to 'index'
  end

  private

  def set_train
    @train = Train.find(params[:id])
  end

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:train_id, :initials, :passport_data)
  end
end