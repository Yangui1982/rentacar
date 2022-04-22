class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    @booking = Booking.new
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    redirect_to car_path
  end

  private

  def car_params
    params.require(:car).permit(:brand, :model, :photo, :price)
  end
end
