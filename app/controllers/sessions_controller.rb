class SessionsController < ApplicationController

  def new
  end

  def create
    session[:user_id] = params[:id]
    redirect_to root_path
  end
end
