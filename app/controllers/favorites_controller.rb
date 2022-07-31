class FavoritesController < ApplicationController
  def new

  end

  def index
    user_id = sessions[:user_id]
    @favorites = FavoriteFacade.get_favorites(user_id)
  end
end