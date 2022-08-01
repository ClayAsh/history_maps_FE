require 'rails_helper'

RSpec.describe FavoriteService do 
  it 'establishes connection to get all favorites', :vcr do 
    user_id = 3
    favorites = FavoriteService.all_favorites(user_id)

    expect(favorites).to be_a(Hash)
  end

  it 'established connection to create new favorite', :vcr do 
    user_id = 3
    data = { user_id: user_id,
             title: "1623 Market Street Denver CO",
             photo: "jpeg.url",
             location_id: "pk id",
             other_titles: "1225",
             details: "some details",
             pdf: nil
           }
   
    new_favorite = FavoriteService.create_favorite(user_id, data)

    expect(new_favorite).to be_a(Hash)
  end
end