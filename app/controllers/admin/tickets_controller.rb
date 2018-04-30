class Admin::TicketsController < Admin::BaseController
  before_action :authenticate_user!
  before_action :set_ticket, only: %i[show destroy edit update]

  def index
    @tickets = Ticket.all
  end

  def show; end

  def edit; end

  def update
    @ticket.update(ticket_params)
    redirect_to admin_tickets_path
  end

  def destroy
    @ticket.destroy
    redirect_to 'index'
  end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:train_id, :initials, :passport_data)
  end
end
