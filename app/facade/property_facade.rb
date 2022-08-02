class PropertyFacade

  def self.find_property(location)
    binding.pry
    # loc_results = BuildingFacade.find_building(location)
    PropertyService.location_results(loc_results)
  end
end
