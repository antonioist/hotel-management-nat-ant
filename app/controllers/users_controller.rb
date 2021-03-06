class UsersController < ApplicationController
  def dashboard
    if current_user.superadmin_role
      @hotels = Hotel.all
    end
  end

  def booking_history
    @bookings = current_user.bookings.sort_by(&:created_at).reverse
  end

  def current_booking
    @bookings = current_user.bookings
  end

  def favorites
    @favorites = current_user.all_favorites
  end

  def tabs
    if current_user.superadmin_role
      @hotel = current_user.hotel || Hotel.new
      @room_categories = RoomCategory.all.order('category ASC')
      @rooms = Room.all.where(hotel_id: params[:hotel_id]).order('number ASC')
      @menu_items = MenuItem.all.order('name ASC')
      @amenities = Amenity.all.order('drink ASC')
      @workers = Worker.all.where(hotel_id: params[:hotel_id]).order('first_name ASC')
      @users = User.all.where(hotel_id: params[:hotel_id]).order('first_name ASC')
      @hotels = Hotel.all
    end
    respond_to do |format|
      format.xlsx {
        response.headers[
          'Content-Disposition'
        ] = "attachment; filename=hotels.xlsx"
      }
      format.html { render :tabs }
    end
  end
end
