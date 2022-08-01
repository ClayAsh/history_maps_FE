class BuildingsController < ApplicationController

  def index
    @building = BuildingFacade.find_building(params[:address])
    @properties = PropertyFacade.find_property(@building)
    # @images = ImagesFacade.find_image(@properties[])
  end

  def show;
    binding.pry
  end
end
