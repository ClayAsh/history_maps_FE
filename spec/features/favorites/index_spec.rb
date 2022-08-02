require 'rails_helper'

RSpec.describe 'favorites index page' do 
  xit 'shows photo and information for favorites' do 
    #allow to return current user 
    visit '/favorites'

    expect(page).to have_content("")
  end
end