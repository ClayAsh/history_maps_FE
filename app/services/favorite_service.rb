class FavoriteService < BaseService

  def self.all_favorites(user_id)
    response = conn.get("/api/v1/users/#{user_id}/favorites")
    get_json(response)
  end

  def self.one_favorite(user_id, photo_id)
    response = conn.get("api/v1/users/#{user_id}/favorites/#{photo_id}")
    get_json(response)
  end

  def self.create_favorite(user_id, data)
    response = conn.post("/api/v1/users/#{user_id}/favorites", {
      photo: data[:photo],
      title: data[:title],
      other_titles: data[:other_titles],
      details: data[:details],
      id: data[:id],
      user_id: user_id
    }.to_json, "Content-Type" => "application/json")
    get_json(response)
  end
end