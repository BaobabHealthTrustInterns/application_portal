class ServicesController < ApplicationController

  before_filter :confirm_logged_in, :except => [:index, :more_services]

  def index

    @main_title = "select a service"

    @services = Service.all
 
    services = Service.limit(12)
    @row_1 = services[0..3] || Hash.new
    @row_2 = services[4..7] || Hash.new
    @row_3 = services[8..11] || Hash.new
    
    @rows = [@row_1, @row_2, @row_3]

    @page = "more_services"
    if Service.count > 12
      @img = "nav/next.png"
      @nav = "MORE SERVICES >>"
    else
      @nav = ""
    end


  end

  def more_services
    @main_title = "select a service"

    @img = "nav/back.png"
    @nav = "<< PREVIOUS SERVICES"
    @page = "/services"

    services = Service.all
    @row_1 = services[12..15] || Hash.new
    @row_2 = services[16..19] || Hash.new
    @row_3 = services[20..23] || Hash.new

    @rows = [@row_1, @row_2, @row_3]

    @services = services[12..23]
    render('index')
  end

  def show
    @img = "nav/back.png"
    @service = Service.find(params[:id])
    @main_title = "displaying #{@service.name} service info"
  end

  def new
    @main_title = "add a new service"
    @service = Service.new
  end

  def edit
    @service = Service.find(params[:id])
    @main_title = "edit #{@service.name} service"
  end

  def create
    @service = Service.new(params[:service])

    if @service.save
      flash[:notice] = "Successfully added a new service!"
      redirect_to @service
    else
      render('new')
    end
  end

  def update
    @service = Service.find(params[:id])

    if @service.update_attributes(params[:service])
      flash[:notice] = "Successfully updated service!"
      redirect_to(@service, :id => @service.id)
    else
      render('edit')
    end
  end

  def delete
    @main_title = "delete a service"
    @service = Service.find(params[:id])
  end

  def destroy
    Service.find(params[:id]).destroy
    flash[:notice] = "Successfully deleted service!"
    redirect_to(services_path)
  end

end