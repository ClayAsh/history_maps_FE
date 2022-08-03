class BuildingsController < ApplicationController

  def index
    @building = BuildingFacade.find_building(params[:address])
    @properties = PropertyFacade.find_property(@building)
  end

  def show;
    @property = PropertyFacade.find_single_location(params[:id])
  end
end
