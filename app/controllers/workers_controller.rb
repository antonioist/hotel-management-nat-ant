class WorkersController < ApplicationController
  before_action :set_worker, only: [:edit, :update, :destroy]

  def new
    @worker = Worker.new
    # @hotel = Hotel.find_by_id(params[:hotel_id])
    @hotel = Hotel.find(params[:hotel_id])
  end

  def create
    @worker = Worker.new(worker_params)
    @hotel = Hotel.find(params[:hotel_id])
    @worker.hotel = @hotel
    if @worker.save
      redirect_to hotel_tabs_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @worker.update(worker_params)
      redirect_to hotel_tabs_path(:hotel_id)
    else
      render :edit
    end
  end

  def destroy
    @worker.destroy
    redirect_to hotel_tabs_path(:hotel_id)
  end

  private

  def set_worker
    @worker = Worker.find(params[:id])
  end

  def worker_params
    params.require(:worker).permit(:first_name, :last_name)
  end

end
