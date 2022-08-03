require 'rails_helper'

RSpec.describe 'favorites index page' do 
  before :each do
    Rails.application.env_config['omniauth.auth'] = OmniAuth.config.mock_auth[:google_oauth2]
    data = { user_id: 5,
             title: "1623 Market Street Denver CO",
             photo: "https://user-images.githubusercontent.com/99059063/182475001-5b42845f-6b32-4038-8d1b-8a75b919a470.jpg",
             location_id: "pk id",
             other_titles: "1225",
             details: "some details",
             pdf: "https://tile.loc.gov/storage-services/master/pnp/habshaer/co/co0900/co0994/data/co0994data.pdf"
           }
    FavoriteFacade.new_favorite(5, data)
  end

  it 'can navegate to user favorites and display data', :vcr do 
    visit '/'

    click_link "Register/Sign In"
    
    expect(current_path).to eq('/')

    click_link "Favorites"

    expect(current_path).to eq('/favorites')
    expect(page).to have_content("1623 Market Street Denver CO")
  end
end