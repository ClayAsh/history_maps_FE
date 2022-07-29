require 'rails_helper'

RSpec.describe "Building service" do
  it "establishes connection with Building/search API" do
    building = BuildingService.address_search("1623 Market St, Denver CO")

    expect(building).to be_a(Hash)
  end
end
