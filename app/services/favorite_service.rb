class FavoriteService < BaseService

  def self.all_favorites(user_id)
    response = conn.get("/api/v1/users/#{user_id}/favorites")
    get_json(response)
  end

  def self.create_favorite(user_id, data) 
    response = conn.post("/api/v1/users/#{user_id}/favorites", {
      user_id: data[:user_id],
      title: data[:title],
      image_full: data[:image_full],
      creator: data[:creator],
      thumbnail: data[:thumbnail],
      short_id: data[:short_id],
      published_date: data[:published_date]
    }.to_json, "Content-Type" => "application/json")
    get_json(response)
  end
end