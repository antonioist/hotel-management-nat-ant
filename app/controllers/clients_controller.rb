class ClientsController < ApplicationController
  def new
    @client = Client.new
  end

  def create
    @client = current_user.clients.new(client_params)
    @room = Room.find(params[:room_id])
    @client.user = current_user
raise
    if @client.save
      respond_to do |format|
        format.html { redirect_to hotel_path(@room.hotel), notice: "Successfully Booked room #{@room.number}" }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'rooms/show' }
        format.js
      end
    end
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :social_number, :user_id,
      bookings_attributes: [:id, :category, :worker_id, :room_id, :user_id,
      booking_amenity_attributes: [:id ,
      amenity_attributes: [:id, :drink]
       ]
      # booking_item_attributes: [:id]
       ]
    )
  end

end
