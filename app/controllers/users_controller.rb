class UsersController < ApplicationController

	def login

	end

	def index

  end

  def show

  end

  def new
  	@user = User.new
  end

def create
    auth = request.env["omniauth.auth"]
    if user = User.find_by_provider_and_uid(auth["provider"], auth["uid"])
      session[:user_id] = user.id
      flash[:success] = ["You've successfully signed in!"]
      redirect_to user
    else
      user = User.create_with_omniauth(auth)
      session[:user_id] = user.id
      flash[:success] = ["You have successfully signed in! Welcome to the site."]
      redirect_to user
    end
  end

  def destroy

  end

  def edit

  end

  def update

  end

  private

  def user_params
  	params.require(:user).permit([:username, :password, :password_confirmation])
  end

end
