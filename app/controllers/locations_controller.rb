class LocationsController < ApplicationController
  
  before_filter :confirm_logged_in

  def index
    @location = Location.find(1)
  end

  def edit
    @location = Location.find(1)
  end

  def update
    location = Location.find(params[:id])

    if location.update_attributes(params[:location])
      redirect_to locations_path
    else
      render edit_locations_path(location)
    end
  end

end
