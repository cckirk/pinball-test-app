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

end
