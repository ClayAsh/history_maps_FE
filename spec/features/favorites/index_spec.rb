require 'rails_helper'

RSpec.describe 'favorites index page' do
  before :each do
    Rails.application.env_config['omniauth.auth'] = OmniAuth.config.mock_auth[:google_oauth2]
       data = { user_id: 8,
              title: "1722 Quebec Street Denver CO",
              image_full: "https://user-images.githubusercontent.com/99059063/182475009-950a6646-f773-429a-ba31-bb821ddeaea7.jpg",
              creator: "Susie Q",
              thumbnail: nil,
              short_id: "co0099",
              published_date: "1930"
            }
    FavoriteFacade.new_favorite(8, data)
  end

  it 'can navegate to user favorites and display data', :vcr do
    visit '/'

    click_link "Register/Sign In"

    expect(current_path).to eq('/')

    click_link "Favorites"

    expect(current_path).to eq('/favorites')
    expect(page).to have_content("1722 Quebec Street Denver CO")
  end

  it "can create a favorite", :vcr do
    visit '/'

    click_link "Register/Sign In"

    fill_in "Address", with: "80223"
    click_on "See History Near Me"

    within("##{0}") do
      click_button "Add To Favorites"
    end
    expect(current_path).to eq("/favorites")

    expect(page).to have_content("Thallheimer, Arnold")
  end
end
