class LocationsController < ApplicationController
  def index
    region = params[:region]
    response = HTTP.get("https://pinballmap.com/api/v1/region/#{region}/locations")
    render json: response.parse()
  end
  
end
