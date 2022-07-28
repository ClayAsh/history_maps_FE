class UsersController < ApplicationController

  def new
  end

  def create
    auth = request.env["omniauth.auth"]
    session[:access_token] = auth[:credentials][:token]
    binding.pry
    # user = UserFacade.create_user(auth_hash[:info])
    redirect_to '/'
  end
end
