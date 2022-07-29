class BuildingsController < ApplicationController

  def index
    @building = BuildingFacade.find_building(params[:address])
    # binding.pry
  end

  def show; end
end
