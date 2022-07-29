require 'rails_helper'

RSpec.describe "User service" do
  it "establishes connection with User API", :vcr do
    users = UserService.users

    expect(users).to be_a(Hash)
    expect(users).to include(:data)
  end

  it 'establishes connection to create new user', :vcr do 
    user_data = {email: 'someone@email.com', username: 'someone'}
    new_user = UserService.create_user(user_data)

    expect(new_user[:data]).to be_a(Hash)
    expect(new_user[:data][:attributes]).to include(:username)
    expect(new_user[:data][:attributes]).to include(:email)
  end

  it 'establishes connection to return one user', :vcr do 
    found_user = UserService.user(3)

    expect(found_user).to be_a(Hash)
    expect(found_user[:data]).to include(:id)
    expect(found_user[:data][:attributes]).to include(:username)
    expect(found_user[:data][:attributes]).to include(:email)
  end

end
