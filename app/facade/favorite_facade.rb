class FavoriteFacade

  def self.get_favorites(id)
    FavoriteService.all_favorites(id).map do |f|
      Favorite.new(f[:data])
    end
  end

  def self.get_favorite(user_id, photo_id)
    data = FavoriteService.one_favorite(user_id, photo_id)
    Favorite.new(data)
  end

  def self.new_favorite(user_id)
    data = FavoriteService.create_favorite(user_id)
    Favorite.new(data)
  end
end