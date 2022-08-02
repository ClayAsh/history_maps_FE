class PropertyFacade

  def self.find_property(location)
    PropertyService.location_results(location)
  end

  def self.find_single_location(id)
    PropertyService.single_location_result(id)
  end
end
