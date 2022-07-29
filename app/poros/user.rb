class User 
  attr_reader :username,
              :email,
              :id
  def initialize(attributes)
    @username = attributes[:attributes][:username]
    @email = attributes[:attributes][:email]
    @id = attributes[:id].to_i
  end
end