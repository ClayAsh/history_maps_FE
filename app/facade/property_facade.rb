class PropertyFacade

  def self.find_property(location)
    loc_results = BuildingFacade.find_building(location)
    binding.pry
    PropertyService.location_results(loc_results)
  end
end
