require 'rails_helper'

RSpec.describe "building show page" do
  it 'can display an image', :vcr do
    id = "al0027"
    visit building_path(id)

    expect(page).to have_content("Senator Thomas Sidney Frazier House, County Road 40, Peachburg, Bullock County, AL")
    expect(page).to have_content("Walker-Frazier-Adams House")
  end
end
