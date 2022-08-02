require 'rails_helper'

RSpec.describe "buuilding show page" do
  it 'can display an image', :vcr do
    id = "al0027"
    visit building_path(id)

    expect(page).to have_content("title")
  end
end
