require 'rails_helper'

RSpec.describe "Landing page" do
  before do
    Rails.application.env_config['omniauth.auth'] = OmniAuth.config.mock_auth[:google_oauth2]
  end

  it "has a link to create an account" do
    visit '/'

    expect(page).to have_link("Register/Sign In")

    click_link "Register/Sign In"

    expect(current_path).to eq('/')
  end

  it "has search field to find by address" do
    visit '/'

    expect(page).to have_field("Address")
  end
end
