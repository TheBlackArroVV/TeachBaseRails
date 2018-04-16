class RoutesController < ApplicationController
  before_action :set_route, only: [:edit, :update, :destroy, :show]

  def index
    @routes = Route.all
  end

  def new
    @route = Route.new
  end

  def create
    @route = Route.new(route_params)

    if @route.save
      redirect_to @route
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @route.update(route_params)
    redirect_to routes_path
  end

  def destroy
    @route.destroy
    redirect_to routes_path
  end

  def show
  end

  private

  def route_params
    params.require(:route).permit(railway_station_ids: [])
  end

  def set_route
    @route = Route.find(params[:id])
  end
end
