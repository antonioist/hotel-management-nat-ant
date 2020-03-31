class MenuItemsController < ApplicationController
  before_action :set_menu_item, only: [:edit, :update, :destroy]
  def index
    @menu_items = MenuItem.all
  end

  def new
    @menu_item = MenuItem.new
  end

  def create
    @menu_item = MenuItem.new(menu_item_params)
    if @menu_item.save
      redirect_to hotel_tabs_path(current_user.hotel)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @menu_item.update(menu_item_params)
      redirect_to hotel_tabs_path(current_user.hotel)
    else
      render :edit
    end
  end

  def destroy
    @menu_item.destroy
    redirect_to hotel_tabs_path(current_user.hotel)
  end

  private

  def set_menu_item
    @menu_item = MenuItem.find(params[:id])
  end

  def menu_item_params
    params.require(:menu_item).permit(:name, :price, :category)
  end
end
