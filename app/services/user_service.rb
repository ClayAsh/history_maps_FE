class UserService < BaseService

  def self.users
    response = conn.get("/api/v1/register")
    get_json(response)
  end

  # def self.create_user(params)
  #   response = conn.post("/api/v1/register"), {email: "#{param.email}", name: "#{params.name}"}.to_json, "Content-Type" => "application/json"
  #   get_json(response)
  # end

end
