require 'rails_helper'

RSpec.describe "Property service", :vcr do
  xit "establishes connection with Property/search API", :vcr do
    results = PropertyService.location_results()

    expect(results).to be_a(Hash)
  end
end
