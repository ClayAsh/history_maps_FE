require 'rails_helper'

RSpec.describe BuildingFacade do
  let!(:find_location) { BuildingFacade.find_building("1623 Market Street, Denver CO")}

  it 'creates location from search' do
    expect(find_location).to eq({
      "street": "1623 Market St",
      "county": "Denver",
      "city": "Denver",
      "state": "CO",
      "zipcode": "80202"
    })
  end
end
