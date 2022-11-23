class RelayPointsController < ApplicationController
  before_action :set_relay_point_id, only: [:show, :edit, :update, :destroy]

  def index
    @relay_points = RelayPoint.all
  end

  def new
    @relay_point = RelayPoint.new
  end

  def create
    @relay_point = RelayPoint.new(relay_point_params)
    @relay_point.save
    redirect_to relay_point_path(@relay_point)
  end

  def show
  end

  def edit
  end

  def update
    @relay_point.update(relay_point_params)
    redirect_to relay_point_path(@relay_point)
  end

  def destroy
    @relay_point.destroy
    redirect_to relay_points_path, status: :see_other
  end

  private

  def relay_point_params
    params.require(:relay_point).permit(:name, :description, :address, :zip_code, :city, :country, :phone, :email)
  end

  def set_relay_point_id
    @relay_point = RelayPoint.find(params[:id])
  end
end
