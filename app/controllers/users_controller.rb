class UsersController < ApplicationController

  def new
  end

  def create
    auth = request.env["omniauth.auth"]
    session[:access_token] = auth[:credentials][:token]
  
  # UserFacade.find_or_create_user(auth[:info])

    redirect_to '/'
  end
end
