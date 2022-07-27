class SessionsController < ApplicationController

  def new

  end

  def create
    session[:user_id] = user.id
    
  end
end
