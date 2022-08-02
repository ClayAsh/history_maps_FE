require 'rails_helper'

RSpec.describe FavoriteService do 
  it 'establishes connection to get all favorites', :vcr do 
    user_id = 3
    favorites = FavoriteService.all_favorites(user_id)

    expect(favorites).to be_a(Hash)
    expect(favorites[:data][0]).to include(:id)
  end

  it 'establishes connection to create new favorite', :vcr do 
    user_id = 3
    data = { user_id: user_id,
             title: "1623 Market Street Denver CO",
             photo: "jpeg",
             location_id: "pk id",
             other_titles: "1225",
             details: "some details",
             pdf: "pdf"
           }
   
    new_favorite = FavoriteService.create_favorite(user_id, data)

    expect(new_favorite).to be_a(Hash)
    expect(new_favorite[:data]).to include(:id)
  end
end