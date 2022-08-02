class BuildingsController < ApplicationController

  def index
    @building = BuildingFacade.find_building(params[:address])
    @properties = PropertyFacade.find_property(@building)
    @images = []
    item_ids = []
    @properties.each do |property|
      item_ids << property[:id]
    end
    item_ids.each do |item|
      @images << PropertyFacade.find_single_location(item[0..5])
    end
  end

  def show;
    match_results(loc)
    @property = PropertyFacade.find_single_location(params[:id])

  end
end
