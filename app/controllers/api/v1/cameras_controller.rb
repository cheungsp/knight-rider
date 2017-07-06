class Api::V1::CamerasController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_camera, only: [:show, :destroy]
  def show
    render json: @camera
  end

  def index
  @cameras = Camera.all
  # @cameras = Camera.order("created_at DESC").limit(10)
  render json: @cameras
end

def create
  camera = Camera.new(camera_params)
  camera.user = current_user

  if camera.save
    render json: { id: camera.id }
  else
    render json: { errors: camera.errors.full_messages }
  end
end

def destroy
  if @camera.destroy
    render json: @camera
  else
    render json: { errors: camera.errors.full_messages }
  end
end

private
def camera_params
  params.require(:camera).permit(:latitude, :longitude)
end

def find_camera
  @camera = Camera.find(params[:id])
end
end
