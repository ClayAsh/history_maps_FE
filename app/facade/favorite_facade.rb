class FavoriteFacade

  def self.get_favorites(id)
    FavoriteService.all_favorites(id)[:data].map do |f|
      Favorite.new(f)
    end
  end

  def self.new_favorite(user_id, data)
    favorite = FavoriteService.create_favorite(user_id, data)
    Favorite.new(favorite[:data])
  end
end