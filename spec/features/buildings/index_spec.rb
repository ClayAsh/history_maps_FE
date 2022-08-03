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

    it 'can show results from LoC api', :vcr do
      visit '/'
      fill_in :address, with: @location
      click_on "See History Near Me"
      expect(current_path).to eq(buildings_path)

      within '#property' do
        expect(page).to have_content("Title")
        expect(page).to have_content("Published Date")
        expect(page).to have_content("Creator")
        # expect(page).to have_button("See This Property")
      end
    end
  end
end
