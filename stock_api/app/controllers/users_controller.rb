class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  before_action :authenticate_token, except: [:login, :create]
  before_action :authorize_user, except: [:login, :create, :index]


  def login
    user = User.find_by(user_name: params[:user][:user_name])
    if user && user.authenticate(params[:user][:password])
      token = create_token(user.id, user.user_name)
      render json: {status: 200, token: token, user: user}
    else
      render json: {status: 401, message: 'Unauthorized'}
    end

  end

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: get_current_user.to_json(include: :companies)
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:user_name, :password)
    end

    #create token with payload
    def create_token(id, username)
      JWT.encode(payload(id, username), ENV['JWT_SECRET'], 'HS256')
    end
#return a hash that contains payload with user id and name to be encrypted
  def payload(id, user_name)
    {
      exp: (Time.now + 30.minutes).to_i,
      iat: Time.now.to_i,
      iss: ENV['JWT_ISSUER'],
      user: {
        id: id,
        user_name: user_name
      }
    }
  end

  def authorize_user
    render json: { status: 401, message: "Unauthorized" } unless get_current_user.id == params[:id].to_i
  end

end
