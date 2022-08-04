require 'rails_helper'

RSpec.describe FavoriteFacade do 
  it 'creates poro for new favorite with nil values', :vcr do
    user_id = 3
    data = { user_id: user_id,
             title: "1800 Main Street Denver CO",
             image_full: "https://user-images.githubusercontent.com/99059063/182475036-a3cc07fc-a5a9-4dbc-a523-990fb06e0cd1.jpg",
             creator: "Hank Williams",
             thumbnail: nil,
             short_id: "co0099",
             published_date: "1929"
           }
   
    new_favorite = FavoriteFacade.new_favorite(user_id, data)

    expect(new_favorite).to be_a(Favorite)
  end

  it 'creates poro for all favorites', :vcr do 
    user_id = 3 
    favorites = FavoriteFacade.get_favorites(user_id)

    expect(favorites.first).to be_a(Favorite)
  end
end