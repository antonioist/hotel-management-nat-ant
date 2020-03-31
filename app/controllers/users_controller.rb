class UsersController < ApplicationController
  def dashboard
    if current_user.superadmin_role
    @hotels = Hotel.all
    @room_categories = RoomCategory.all
    @rooms = Room.all
    end
  end

  def tabs
    if current_user.superadmin_role
    @room_categories = RoomCategory.all
    @rooms = Room.all.where(hotel_id: params[:hotel_id])
    @menu_items = MenuItem.all.order('name ASC')
    @amenities = Amenity.all.order('drink ASC')
    @workers = Worker.all.where(hotel_id: params[:hotel_id]).order('first_name ASC')
    @users = User.all.where(hotel_id: params[:hotel_id]).order('first_name ASC')
    end
  end
end
