class SessionsController < ApplicationController

  def create
    @user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
    if @user
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:alert] = "There was a problem logging you in."
      redirect_to log_in_path
    end
  end
end