class RoomCategoriesController < ApplicationController
  before_action :set_room_category, only: [:edit, :delete, :update]
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

  def edit
  end

  def update
    if @room_category.update
      redirect_to hotel_tabs_path(hotel)
    else
      render :edit
    end
  end

  def destroy
    @room_category.destroy
    redirect_to hotel_tabs_path(hotel)
  end

  private

  def set_room_category
    @room_category = RoomCategory.find(params[:id])
  end

  def room_category_params
    params.require(:room_category).permit(:category, :price)
  end
end
