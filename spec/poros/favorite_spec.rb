require 'rails_helper'

RSpec.describe Favorite do 
  it 'exists and has attributes', :vcr do 
    user_id = 3 
    favorites = FavoriteFacade.get_favorites(user_id)

    expect(favorites.first).to be_a(Favorite)
    expect(favorites.first.title).to eq("1237 tamarac denver co")
    expect(favorites.first.photo).to eq("jpg")
    expect(favorites.first.id).to eq("1")
  end

  it 'has attributes for creating a favorite', :vcr do
    user_id = 1
    data = { user_id: user_id,
             title: "1623 Market Street Denver CO",
             photo: "jpeg",
             location_id: "pk id",
             other_titles: "1225",
             details: "some details",
             pdf: "pdf"
           }
    favorite = FavoriteFacade.new_favorite(user_id, data)

    expect(favorite.photo).to eq("jpeg")       
    expect(favorite.title).to eq("1623 Market Street Denver CO")
    expect(favorite.other_titles).to eq("1225")
    expect(favorite.details).to eq("some details")
    expect(favorite.location_id).to eq("pk id")
    expect(favorite.pdf).to eq("pdf")
    expect(favorite.user_id).to eq(1)
  end
end