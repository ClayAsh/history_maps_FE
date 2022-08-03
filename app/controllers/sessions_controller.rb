class SessionsController < ApplicationController

  def destroy
    session.destroy
    redirect_to root_path
  end
end
