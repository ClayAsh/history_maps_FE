require 'rails_helper'

RSpec.describe Favorite do 
  it 'exists and has attributes' do 
    user_id = 3 
    favorites = FavoriteFacade.all_favorites(user_id)

    expect(favorites.first).to be_a(Favorite)
    expect(favorites.first.title).to eq("")
    expect(favorites.first.photo).to eq("")
    expect(favorites.first.id).to eq("")
  end
end