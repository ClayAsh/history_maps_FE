require 'rails_helper'

RSpec.describe Property do
  xit 'exists with attributes', :vcr do
    data = {

    }

    property = Property.new(data)

    expect(property).to be_a(Property)
  end
end
