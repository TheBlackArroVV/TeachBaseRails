class Admin::TrainsController < Admin::BaseController
  before_action :set_train, only: %i[show edit update destroy]

  def index
    @trains = Train.all
  end

  def show
    @compartment_carriages = Carriage.where(train: @train, type_of_carriage: 'Купе')
    @reserved_seat_carriages = Carriage.where(train: @train, type_of_carriage: 'Плацкарт')
  end

  def new
    @train = Train.new
  end

  def create
    @train = Train.new(train_params)

    if @train.save
      redirect_to admin_train_path(@train), notice: 'Train was successfully created.'
    else
      render 'new'
    end
  end

  def destroy
    @train.destroy
    redirect_to admin_trains_path, notice: 'Train was successfully destroyed.'
  end

  private

  def set_train
    @train = Train.find(params[:id])
  end

  def train_params
    params.require(:train).permit(:number, :route_id, :current_station_id)
  end
end
