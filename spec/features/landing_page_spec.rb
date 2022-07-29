require 'rails_helper'

RSpec.describe "Landing page" do
  # before :each do
  #   Rails.application.env_config['omniauth.auth'] = OmniAuth.config.mock_auth[:google_oauth2]
  # end

  it "has a link to create an account", :vcr do
    visit '/'

    click_link "Register/Sign In"

    expect(current_path).to eq('/')
  end

  it "has search field to find by address" do
    visit '/'

    expect(page).to have_field("Address")
  end

  describe 'search location' do
    before :each do
      @location = '1623 market street, denver co'
    end

    it 'can search for a location', :vcr do
      visit '/'
      fill_in :address, with: @location
      click_on "See History Near Me"

      expect(current_path).to eq(buildings_path)
    end

    it 'can have all the buttons', :vcr do
      visit '/'
      fill_in :address, with: @location
      click_on "See History Near Me"
      expect(current_path).to eq(buildings_path)

      within '#property' do
        expect(page).to have_content("Street address: 1623 Market St")
        expect(page).to have_content("County: Denver")
        expect(page).to have_content("City: Denver")
        expect(page).to have_content("State: CO")
        expect(page).to have_content("Zipcode: 80202")
        # expect(page).to have_button("See This Property")
      end
    end
  end
end
