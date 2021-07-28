class UsersController < ApplicationController
  # has_secure_password
  # before_action :authenticate_user, except: :create
  # has_many :posts

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def index
    response = HTTP.get("https://pinballmap.com/api/v1/region/ca-central/locations.json")
    render json: response.parse()
  end


end
