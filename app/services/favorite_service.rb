class FavoriteService < BaseService

  def self.all_favorites(user_id)
    response = conn.get("/api/v1/users/#{user_id}/favorites")
    get_json(response)
  end
end