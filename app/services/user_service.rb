class UserService < BaseService

  def self.users
    response = conn.get("/api/v1/users")
    get_json(response)
  end

  def self.user(id)
    response = conn.get("/api/v1/users/#{id}")
    get_json(response)
  end

  def self.create_user(data)
    response = conn.post("/api/v1/users/register", {
      email: data[:email], 
      username: data[:name]
    }.to_json, "Content-Type" => "application/json")
    get_json(response)
  end
end
