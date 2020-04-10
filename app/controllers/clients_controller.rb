class ClientsController < ApplicationController
  def new
    @client = Client.new
  end

  def create
    @client = current_user.clients.new(client_params)
    @room = Room.find(params[:room_id])
    @booking_amenity = BookingAmenity.where(amenity_id: params[:amenity_id])
    @booking_menu_item = BookingItem.where(menu_item_id: params[:menu_item_id])
    @client.user = current_user
raise
    if @client.save
     redirect_to hotel_path(@room.hotel)
    else
      render 'rooms/show'
    end
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :social_number,:user_id,
      bookings_attributes: [:id, :category, :worker_id, :room_id, :user_id
      # booking_amenities_attributes: [ :id, :amenity_id],
      # booking_item_attributes: [ :id, :menu_item_id]
      ]
    )
  end

end
