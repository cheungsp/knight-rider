class Api::V1::AccidentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_accident, only: [:show, :destroy]
  def show
    render json: @accident
  end

  def index
    # @accidents = Accident.all
    @accidents = Accident.order("created_at DESC").limit(500)
    render json: @accidents
  end

  def create
    accident = Accident.new(accident_params)
    accident.user = current_user

    if accident.save
      render json: { id: accident.id }
    else
      render json: { errors: accident.errors.full_messages }
    end
  end

  def destroy
    if @accident.destroy
      render json: @accident
    else
      render json: { errors: accident.errors.full_messages }
    end
  end

  private
  def accident_params
    params.require(:accident).permit(:latitude, :longitude)
  end

  def find_accident
    @accident = Accident.find(params[:id])
  end
end
