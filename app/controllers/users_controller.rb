class UsersController < ApplicationController
  def create
    auth = request.env["onmiauth.auth"]
    binding.pry
    session[:access_token] = auth[:credentials][:token]
    # user = UserFacade.create_user(auth_hash[:info])

    redirect '/'
  end
end
