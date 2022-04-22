class BookingsController < ApplicationController
  before_action :set_car, only: [:index, :show, :create, :new]
  before_action :set_booking, except: [:index, :new, :create]
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.car = @car
    @booking.user = current_user
    if @booking.save
      redirect_to car_booking_path(@car, @booking)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.available = false
    @booking.save
    redirect_to root_path
  end

  def show
  end

  def destroy
    @booking.destroy
    redirect_to root_path, notice: 'Booking successfully destroyed.'
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :car_id)
  end

  def set_car
    @car = Car.find(params[:car_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
