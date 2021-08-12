class PostsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]
  def create
    @post = Post.new(
      title: params[:title],
      comment: params[:comment],
      high_score: params[:high_score],
      address: params[:address],
      user_id: current_user.id,
    )
    if @post.save
      render json: @post.as_json
    else
      render json: @post.as_json
    end
  end

  def index
    @posts = Post.all
    render json: @posts.as_json
  end

  def show
    the_id = params[:id] 
    post = Post.find_by(id: the_id)
    render json: post.as_json
  end

  def destroy
    the_id = params[:id]
    post = Post.find_by(id: the_id)
    post.destroy
    render json: post.as_json && {message: "You just deleted this post"}
  end
end
