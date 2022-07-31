class BuildingsController < ApplicationController

  def index
    @building = BuildingFacade.find_building(params[:address])
    @property = PropertyFacade.find_property(@building)
    # binding.pry
  end

  def show;
    binding.pry
  end
end
