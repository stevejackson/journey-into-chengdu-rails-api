class LocationUpdatesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    latitude = params[:latitude]
    longitude = params[:longitude]
    point = "POINT(#{longitude} #{latitude})"
    LocationUpdate.create!(latlon: point)
  end

  private

  def location_update_params
    params.permit(:latitude, :longitude)
  end
end
