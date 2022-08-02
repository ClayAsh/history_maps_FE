require 'rails_helper'

RSpec.describe FavoriteFacade do 
  it 'creates poro for all favorites', :vcr do 
    user_id = 3 
    favorites = FavoriteFacade.get_favorites(user_id)

    expect(favorites.first).to be_a(Favorite)
  end

  it 'creates poro for new favorite', :vcr do
    user_id = 3
    data = { user_id: user_id,
             title: "1623 Market Street Denver CO",
             photo: "jpeg.url",
             location_id: "pk id",
             other_titles: "1225",
             details: "some details",
             pdf: "pdf"
           }
   
    new_favorite = FavoriteFacade.new_favorite(user_id, data)

    expect(new_favorite).to be_a(Favorite)
  end

  it 'creates poro for new favorite with nil values', :vcr do
    user_id = 3
    data = { user_id: user_id,
             title: "1623 Market Street Denver CO",
             photo: "jpeg.url",
             location_id: "pk id",
             other_titles: nil,
             details: "some details",
             pdf: nil
           }
   
    new_favorite = FavoriteFacade.new_favorite(user_id, data)
    expect(new_favorite).to be_a(Favorite)
    expect(new_favorite.user_id).to eq(3)
    expect(new_favorite.title).to eq("1623 Market Street Denver CO")
    expect(new_favorite.other_titles).to eq(nil)
  end
end