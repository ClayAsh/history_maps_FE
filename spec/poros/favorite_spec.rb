require 'rails_helper'

RSpec.describe Favorite do 
  it 'exists and has attributes', :vcr do 
    user_id = 3 
    favorites = FavoriteFacade.all_favorites(user_id)

    expect(favorites.first).to be_a(Favorite)
    # expect(favorites.first.title).to eq("")
    # expect(favorites.first.photo).to eq("")
    # expect(favorites.first.id).to eq("")
  end

  it 'has attributes for creating a favorite', :vcr do
    user_id = 1
    data = { user_id: user_id,
             title: "1623 Market Street Denver CO",
             photo: "jpeg",
             location_id: "pk id",
             other_titles: "1225",
             details: "some details",
             pdf: nil
           }
    favorite = Favoritefacade.new_favorite(user_id, data)

    expect(favorite.photo).to eq("")       
    expect(favorite.title).to eq("")
    expect(favorite.other_title).to eq("")
    expect(favorite.details).to eq("")
    expect(favorite.id).to eq("")
    expect(favorite.location_id).to eq("")
    expect(favorite.pdf).to eq("")
    expect(favorite.user_id).to eq("")
  end
end