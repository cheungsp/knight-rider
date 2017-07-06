class Api::V1::CrimesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_crime, only: [:show, :destroy]
  def show
    render json: @crime
  end

  def index
  # @crimes = Crime.all
  @crimes = Crime.order("created_at DESC").limit(500)
  render json: @crimes
end

def create
  crime = Crime.new(crime_params)
  crime.user = current_user

  if crime.save
    render json: { id: crime.id }
  else
    render json: { errors: crime.errors.full_messages }
  end
end

def destroy
  if @crime.destroy
    render json: @crime
  else
    render json: { errors: crime.errors.full_messages }
  end
end

private
def crime_params
  params.require(:crime).permit(:latitude, :longitude)
end

def find_crime
  @crime = Crime.find(params[:id])
end
end
