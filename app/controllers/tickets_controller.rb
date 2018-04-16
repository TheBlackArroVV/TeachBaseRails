class TicketsController < ApplicationController
  before_action :set_user, only: [:new, :create]

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = @user.tickets.new(ticket_params)

    if @ticket.save
      redirect_to @ticket
    else
      render 'new'
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_train
    @train = Train.find()
  end

  def ticket_params
    params.require(:ticket).permit(:user_id, :initials, :passport_data)
  end
end