class SearchesController < ApplicationController
  def show
    if params[:search]
      station = "#{params[:search][:arrival_station]} - #{params[:search][:departure_station]}"
      @routes = Route.where(name: station)
      station1 = RailwayStation.where(name: "#{params[:search][:arrival_station]}")
      station2 = RailwayStation.where(name: "#{params[:search][:departure_station]}")
      pp @time = RailwayStationsRoute.where(route: @routes)
      @user = User.first
    end
  end
end