class PropertyFacade

  def self.find_property(location)
    PropertyService.location_results(location)
  end
end
