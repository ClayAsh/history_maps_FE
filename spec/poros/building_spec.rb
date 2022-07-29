require 'rails_helper'

RSpec.describe Building do
  it 'exists with attributes', :vcr do
    data = {
      street: "1623 Market St",
      county: "Denver",
      city: "Denver",
      state: "CO",
      zipcode: "80202"
    }

    building = Building.new(data)

    expect(building).to be_a(Building)
    expect(building.street).to eq("1623 Market St")
    expect(building.county).to eq("Denver")
    expect(building.city).to eq("Denver")
    expect(building.state).to eq("CO")
    expect(building.zipcode).to eq("80202")
  end
end
