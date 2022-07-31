class SessionsController < ApplicationController

  def new
  end

  def create
    session[:user_id] = params[:user_id]
    redirect_to root_path
  end

  def destroy 
    session.destroy 
    redirect_to root_path
  end
end
