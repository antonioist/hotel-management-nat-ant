class AmenitiesController < ApplicationController
  before_action :set_amenity, only: [:edit, :update, :destroy]
  def index
    @amenities = Amenity.all
  end

  def new
    @amenity = Amenity.new
  end

  def create
    @amenity = Amenity.new(amenity_params)
    if @amenity.save
      redirect_to hotel_tabs_path(:hotel_id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @amenity.update(amenity_params)
      redirect_to hotel_tabs_path(:hotel_id)
    else
      render :edit
    end
  end

  def destroy
    @amenity.destroy
    redirect_to hotel_tabs_path(:hotel_id)
  end

  private

  def set_amenity
    @amenity = Amenity.find(params[:id])
  end

  def amenity_params
    params.require(:amenity).permit(:drink)
  end
end
