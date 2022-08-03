require 'rails_helper'

RSpec.describe "building show page" do
  xit 'can display an image', :vcr do
    id = "al0027"
    visit building_path(id)

    expect(page).to have_content("Title")
  end
end
