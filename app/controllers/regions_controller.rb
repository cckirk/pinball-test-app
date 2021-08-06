class RegionsController < ApplicationController

  def index
    response = HTTP.get("https://pinballmap.com/api/v1/regions.json")
    render json: response.parse()
  end

  
  def show
    the_id = params[:id]
    response = HTTP.get("https://pinballmap.com/api/v1/regions/#{the_id}.json")
    render json: response.parse()
  end

end
