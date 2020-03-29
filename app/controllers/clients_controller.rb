class ClientsController < ApplicationController
  def new
    @client = Client.new
  end

  def create
    @room = Room.where(hotel_id: params[:hotel_id])
    @worker = Worker.where(hotel_id: params[:hotel_id])
    @client = Client.new(params[client_params])
    if @client.save
      redirect_to hotel_room_path(:hotel_id, :id)
    else
      render :new
    end
  end




  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :social_number)

  end
  def booking_params
    params.require(:booking).permit(:category, :work_id)
  end
end
