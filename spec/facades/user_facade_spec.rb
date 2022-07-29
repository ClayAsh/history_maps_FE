require 'rails_helper'

RSpec.describe UserFacade do 
  it 'creates poro for create user', :vcr do 
    info = {username: "Bob", email: "bob@email.com"}
    user = UserFacade.find_create_user(info)

    expect(user).to be_a(User)
    expect(user.username).to eq("Bob")
    expect(user.email).to eq("bob@email.com")
  end

  it 'creates poro for all users', :vcr do 
    users = UserFacade.all_users 

    expect(users.first).to be_a(User)
  end

  it 'creates poro for one user', :vcr do 
    user = UserFacade.get_user(2)

    expect(user.id).to eq("2")
  end
end