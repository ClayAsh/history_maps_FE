require 'rail_helper'

RSpec.describe FavoriteFacade do 
  it 'creates poro for all favorites' do 
    user_id = 3 
    favorites = FavoriteFacade.all_favorites(user_id)

    expect(favorites.first).to be_a(Favorite)
  end
end