class FavoritesController < ApplicationController
  def new
  end

  def create(data)
    session[:user_id] = user_id
    FavoriteFacade.new_favorite(user_id, data)
    redirect_to '/favorites'
  end

  def index
    user_id = session[:user_id]
    @favorites = FavoriteFacade.get_favorites(user_id)
  end
end