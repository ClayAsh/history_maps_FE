class UserFacade 

  def self.find_create_user(info)
    attributes = UserService.create_user(info)
    User.new(attributes[:data])
  end

  def self.all_users
    users = UserService.users
     users[:data].map do |info|
      User.new(info)
    end 
  end

  def self.get_user(id)
    user_info = UserService.user(id)
    User.new(user_info[:data])
  end
end