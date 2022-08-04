class FavoritesController < ApplicationController
  def new
  end

  def create
    user_id = session[:user_id]
    FavoriteFacade.new_favorite(user_id.to_i, favorite_params)
    redirect_to '/favorites'
  end

  def index
    @session_user_id = session[:user_id]
    @favorites = FavoriteFacade.get_favorites(@session_user_id)
  end

  private
    def favorite_params
      params.permit(:title, :thumbnail, :short_id, :creator, :published_date, :image_full)
    end
end
