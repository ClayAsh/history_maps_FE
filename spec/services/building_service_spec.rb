require 'rails_helper'

RSpec.describe "Building service", :vcr do
  it "establishes connection with Building/search API", :vcr do
    building = BuildingService.address_search("1623 Market St, Denver CO")

    expect(building).to be_a(Hash)
  end
end
