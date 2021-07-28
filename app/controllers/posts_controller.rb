class PostsController < ApplicationController
  belongs_to :user
  def create
    post = Post.new(
      comment: params[:comment],
      high_score: params[:high_score],
      address: params[:address],
    )
  end

  def index
    @posts = Posts.all
    render "index.json.jbuilder"
  end

end
