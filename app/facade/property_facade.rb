class PropertyFacade

  def self.find_property(location)
    properties = PropertyService.location_results(location)
    properties.map do |property|
      Property.new(property)
    end
  end

  def self.find_single_location(id)
    PropertyService.single_location_result(id)
  end
end
