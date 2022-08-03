require 'rails_helper'

RSpec.describe 'index page' do
  describe 'search location' do
    before :each do
      @location = '80202'
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

    it 'can show results from LoC api' do

    end
  end
end
