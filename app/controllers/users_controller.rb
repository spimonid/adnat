class UsersController < ApplicationController
  def index
    render json: User.all.as_json
  end

  def get_current_user
    render json: current_user
  end

  def create
    user = User.new(
      name: params[:name],
      email_address: params[:email_address],
      password: params[:password],
      password_confirmation: params[:password_confirmation],

    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
end
