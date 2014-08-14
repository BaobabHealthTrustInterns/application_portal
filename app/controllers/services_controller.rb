class ServicesController < ApplicationController

  before_filter :confirm_logged_in, :except => [:index, :more_services]

    def index
    @main_title = "Select a service"
    @services = Service.all
 
    services = Service.limit(9)
    @row_1 = services[0..2] || Hash.new
    @row_2 = services[3..5] || Hash.new
    @row_3 = services[6..8] || Hash.new
    
    @rows = [@row_1, @row_2, @row_3]

    @page = "more_services"
    if Service.count > 9
      @img = "nav/next.png"
      @nav = "MORE SERVICES >>"
    else
      @nav = ""
    end
  end

  def more_services
    @main_title = "Select a service"
    @img = "nav/back.png"
    @nav = "<< PREVIOUS SERVICES"
    @page = "/services"

    services = Service.all
    @row_1 = services[9..11] || Hash.new
    @row_2 = services[12..14] || Hash.new
    @row_3 = services[15..17] || Hash.new

    @rows = [@row_1, @row_2, @row_3]

    @services = services[9..17]
    render('index')
  end

  def show
    @img = "nav/back.png"
    @service = Service.find(params[:id])
    @main_title = "Displaying #{@service.name} service information"
  end

  def new
    @main_title = "Add a new service"
    @service = Service.new
  end

  def edit
    @service = Service.find(params[:id])
    @main_title = "Edit #{@service.name} service details"
  end

  def create
    @service = Service.new(params[:service])

    if @service.save
      flash[:notice] = "Successfully added the new service!"
      redirect_to @service
    else
      render('new')
    end
  end

  def update
    @service = Service.find(params[:id])

    if @service.update_attributes(params[:service])
      flash[:notice] = "Successfully updated the service!"
      redirect_to(@service, :id => @service.id)
    else
      render('edit')
    end
  end

  def delete
    @main_title = "Delete a service"
    @service = Service.find(params[:id])
  end

  def destroy
    Service.find(params[:id]).destroy
    flash[:notice] = "Successfully deleted service!"
    redirect_to(services_path)
  end

end