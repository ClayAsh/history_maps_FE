require 'rails_helper'

RSpec.describe Favorite do 
  it 'has attributes for creating a favorite', :vcr do
    user_id = 1
    data = { user_id: user_id,
             title: "1623 Market Street Denver CO",
             image_full: "https://user-images.githubusercontent.com/99059063/182475022-cbf107a9-8799-43de-9416-5f2f86b70acd.jpg",
             creator: "John Smith",
             thumbnail: nil,
             short_id: "co0087",
             published_date: "1925"
           }
    favorite = FavoriteFacade.new_favorite(user_id, data)

    expect(favorite).to be_a(Favorite)
    expect(favorite.user_id).to eq(1)
    expect(favorite.title).to eq("1623 Market Street Denver CO")
    expect(favorite.image_full).to eq("https://user-images.githubusercontent.com/99059063/182475022-cbf107a9-8799-43de-9416-5f2f86b70acd.jpg")       
    expect(favorite.creator).to eq("John Smith")
    expect(favorite.thumbnail).to eq(nil)
    expect(favorite.short_id).to eq("co0087")
    expect(favorite.published_date).to eq("1925")
  end
end