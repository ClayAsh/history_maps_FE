require 'rails_helper'

RSpec.describe "Landing page" do
  before :each do
    Rails.application.env_config['omniauth.auth'] = OmniAuth.config.mock_auth[:google_oauth2]
  end

  it "has a link to create an account", :vcr do
    visit '/'
    expect(page).to_not have_link("Sign Out")

    click_link "Register/Sign In"
    expect(current_path).to eq('/')

    expect(page).to have_link("Sign Out")
    expect(page).to have_link("Favorites")

    click_link "Sign Out"

    expect(page).to have_link("Register/Sign In")
  end
end
