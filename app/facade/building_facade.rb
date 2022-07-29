class BuildingFacade

  def self.find_building(address)
    BuildingService.address_search(address)
  end
end
