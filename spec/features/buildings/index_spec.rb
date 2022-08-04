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

    it "has working link to show page" do
      visit '/'
      fill_in :address, with: @location
      click_on "See History Near Me"
      expect(current_path).to eq(buildings_path)

      click_on "3. Photographic copy of photograph (ca. 1955, original negative found in Beierle Barn, now on file at New Denver International Airport Office, Stapleton International Ariport, Denver, CO). VIEW OF RESIDENCE AND FARM, LOOKING NORTHEAST. - Beierle Farm, Hudson Road & 96th Avenue, Denver, Denver County, CO"

    end
  end
end
