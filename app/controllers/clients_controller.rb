class ClientsController < ApplicationController
  def new
    @client = Client.new
  end

  def create
    @client = current_user.clients.new(client_params)
    @room = Room.find(params[:room_id])
    @amenities = Amenity.find(params[:id])
    @client.user = current_user

    if @client.save!
     redirect_to hotel_path(@room.hotel)
    else
      render 'rooms/show'
    end
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :social_number,:user_id,
      bookings_attributes: [:id, :category, :worker_id, :room_id, :user_id,
      amenities_attributes: [ :id, :drink]
      ]
    )
  end

end
