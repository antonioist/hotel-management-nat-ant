class ClientsController < ApplicationController
  def new
    @client = Client.new
    @booking = Booking.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to   hotel_rooms_path(:hotel_id, :id)
    else
      render :new
    end
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :social_number)
  end
end
