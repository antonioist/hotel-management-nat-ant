class UsersController < ApplicationController
  def dashboard
    @hotels = Hotel.all
    @room_categories = RoomCategory.all
    @rooms = Room.all
  end

  def tabs
    @room_categories = RoomCategory.all
    @rooms = Room.all.where(hotel_id: params[:hotel_id])
    @menu_items = MenuItem.all
    @amenities = Amenity.all
  end
end
