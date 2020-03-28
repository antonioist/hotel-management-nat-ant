class ClientsController < ApplicationController
  def new
    @client = Client.new
    @booking = @client.bookings.build
  end

  def create
    @room = Room.where(hotel_id: params[:hotel_id])
    @worker = Worker.where(hotel_id: params[:hotel_id])
    @client = Client.new(params[client_params])
    @booking = @client.bookings.build(params[:booking])
    if @client.save!
      redirect_to hotel_client_path(:hotel_id, :id)
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
  def booking_params
    params.require(:booking).permit(:category, :work_id)
  end
end
