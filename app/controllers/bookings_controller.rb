class BookingsController < ApplicationController
  def show
    @booking = Booking.where(hotel_id: params[:hotel_id])
    @client = Client.where(hotel_id: params[:hotel_id])
  end
  def new
    @booking = Booking.new
  end

  def create
    @room = Room.where(hotel_id: params[:hotel_id])
    @worker = Worker.where(hotel_id: params[:hotel_id])
    @client = Client.new(params[client_params])
    if @client.save!
      redirect_to hotel_booking_path(:booking_id)
    else
      render :new
    end
  end

  private

  def client_params
    params.require(:client)
          .permit(:first_name,
                  :last_name,
                  :email,
                  :social_number,
                  bookings_atributes: [:category, :work_id])
  end

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :social_number)
  end
end
