class FavoritesController < ApplicationController
  before_action :authenticate_user
  def indexFavoritePosts
    @favoritePosts = Favorite.find_by(:favoritePosts)
    render json: @favoritePosts.as_json
  end

  def indexFavoriteLocation
    @favoriteLocations = Favorite.find_by(:favoriteLocations)
    render json: @favoriteLocations.as_json
  end

  def createFavoritePost
    @favoritePost = Favorite.new(
      favoritePost: params[:favoritePost],
    )
    @favoritePost.save
    render json: @favoritePost
  end

  def createFavoriteLocation
    @favoriteLocation = Favorite.new(
      favoriteLocation: params[:favoriteLocation]
    )
    @favoritePost.save
  end

  def destroy
    the_id = params[:id]
    favorite = Favorite.find_by(id: the_id)
    favorite.destroy
    render json: post.as_json && {message: "You just deleted this favorite"}
  end
end
