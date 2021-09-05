class UsersController < ApplicationController
  skip_before_action :authorize_request, only: :create

  def index
    @users = User.all

    render json: @users
  end

  def show
    @user = User.find(params[:id])

    render json: @user
  end

  # POST /signup
  # return authenticated token upon signup
  def create
    user = User.create!(user_params)
    auth_token = AuthenticateUser.new(user.email, user.password).call
    response = { message: Message.account_created, auth_token: auth_token }
    json_response(response, :created)
  end

  private

  def user_params
    params
      .permit(:username, :name, :occupation, :photo, :email, :password, :password_confirmation, :age, :gender, :level_initial, :level_plan, :due_date)
  end
end
