require 'rails_helper'

RSpec.describe "User service" do
  it "establishes connection with User API" do
    users = UserService.users

    expect(users).to be_a(Hash)
  end


end
