require 'rails_helper'

RSpec.describe PropertyFacade, :vcr do
  location = {
    "street": "1623 Market St",
    "county": "Denver",
    "city": "Denver",
    "state": "CO",
    "zipcode": "80202"
  }
  let!(:find_property) { PropertyFacade.find_property(location) }

  xit 'finds the results for a location search', :vcr do
    expect(find_property).to be_a(Array)
  end
end
