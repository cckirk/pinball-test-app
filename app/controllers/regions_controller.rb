class RegionsController < ApplicationController

  def index
    response = HTTP.get("https://pinballmap.com/api/v1/regions.json")
    render json: response.parse()
  end

  def show
    the_id = params[:id]
    if the_id == true
      response = HTTP.get("https://pinballmap.com/api/v1/regions/:id.json")
      render json: response.parse()
    else
      p -1
    end
  end

end
