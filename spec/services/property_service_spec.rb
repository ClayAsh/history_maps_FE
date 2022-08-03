require 'rails_helper'

RSpec.describe "Property service", :vcr do
  it "establishes connection with Property/search API", :vcr do
    location = { county: "Denver", state: "CO"}
    results = PropertyService.location_results(location)
    
    expect(results).to be_a(Array)
  end
end
