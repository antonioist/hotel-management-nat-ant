class RoomCategoriesController < ApplicationController
  def new
    @room_category = RoomCategory.new
  end

  def create
    @room_category = RoomCategory.new(room_category_params)
    if @room_category.save
      redirect_to hotel_tabs_path(hotel)
    else
      render :new
    end
  end

  private

  def room_category_params
    params.require(:room_category).permit(:category, :price)
  end
end
