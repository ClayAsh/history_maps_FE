require 'rails_helper'

RSpec.describe User do 
  it 'exists and has attributes', :vcr do 
    info = {username: "Bob", email: "bob@email.com"}
    user = UserFacade.find_create_user(info)

    expect(user.username).to eq("Bob")
    expect(user.email).to eq("bob@email.com")
  end
end