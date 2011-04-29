class BookingsController < ApplicationController

  def new
    @booking = Booking.new(:id => 1)
  end

  def create
    @booking = Booking.new(params[:booking])
    if @booking.save
      redirect_to('/', :notice => "Support was successfully sent.")
    else
      flash[:alert] = "You must fill all fields."
      render 'new'
    end
  end

end
