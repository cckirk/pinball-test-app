class PostsController < ApplicationController
  belongs_to :user
  def create
    post = Post.new(
      title: params[:title],
      comment: params[:comment],
      high_score: params[:high_score],
      address: params[:address],
      user_id: current_user.id,
    )
  end

  def index
    @posts = Posts.all
    render "index.json.jbuilder"
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
    render json: post.as_json && {message: "You just deleted this post"}
  end
end
