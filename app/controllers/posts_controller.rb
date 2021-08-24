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
      render json: @post
    else
      render json: @post
    end
  end

  def index
    @posts = Post.all
    render json: @posts
  end
  
  def update
    the_id = params[:id] 
    post = Post.find_by(id: the_id)
    post.update(
      title: params[:title] || post.title,
      comment: params[:comment] || post.comment,
      high_score: params[:high_score] || post.high_score,
      address: params[:address] || post.address,
    )
    render json: post
  end

  def show
    the_id = params[:id] 
    post = Post.find_by(id: the_id)
    render json: post
  end

  def destroy
    the_id = params[:id]
    post = Post.find_by(id: the_id)
    post.destroy
    render json: post && {message: "You just deleted this post"}
  end
end
