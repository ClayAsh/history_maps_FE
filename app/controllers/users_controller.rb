class UsersController < ApplicationController

  def new
  end

  def create
    require 'pry'; binding.pry
    auth = request.env["omniauth.auth"]
    session[:access_token] = auth[:credentials][:token]
    UserFacade.find_create_user(auth[:info])
    redirect_to root_path
  end

  def destroy 
    session.destroy 
    redirect_to root_path
  end
end
