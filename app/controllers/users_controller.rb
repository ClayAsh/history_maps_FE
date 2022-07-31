class UsersController < ApplicationController

  def new
  end

  def create
    auth = request.env["omniauth.auth"]
    session[:access_token] = auth[:credentials][:token]
    user = UserFacade.find_create_user(auth[:info])
    session[:user_id] = user.id
    redirect_to '/'
  end
end
