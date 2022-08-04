require 'rails_helper'

RSpec.describe FavoriteService do 
  it 'establishes connection to create new favorite', :vcr do 
    user_id = 3
    data = { user_id: user_id,
              title: "1722 Quebec Street Denver CO",
              image_full: "https://user-images.githubusercontent.com/99059063/182475009-950a6646-f773-429a-ba31-bb821ddeaea7.jpg",
              creator: "Susie Q",
              thumbnail: nil,
              short_id: "co0099",
              published_date: "1930"
            }
  
    new_favorite = FavoriteService.create_favorite(user_id, data)
    
    expect(new_favorite).to be_a(Hash)
    expect(new_favorite[:data]).to include(:id)
  end

  it 'establishes connection to get all favorites', :vcr do 
    user_id = 3
    favorites = FavoriteService.all_favorites(user_id)

    expect(favorites).to be_a(Hash)
    expect(favorites[:data][0]).to include(:id)
  end
end