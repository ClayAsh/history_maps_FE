require 'rails_helper'

RSpec.describe FavoriteService do 
  it 'establishes connection to get all favorites', :vcr do 
    user_id = 3
    favorites = FavoriteService.all_favorites(user_id)

    expect(favorites).to be_a(Hash)
  end
end