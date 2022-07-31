class FavoriteFacade

  def self.get_favorites(id)
    FavoriteService.all_favorites(id).map do |f|
      Favorite.new(f[:data])
    end
  end
end