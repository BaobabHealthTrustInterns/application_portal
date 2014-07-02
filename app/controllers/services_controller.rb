class ServicesController < ApplicationController

  def new
	@service = Service.new
  end

 def list
	@services = Service.all
	@services = Service.order("services.name ASC")
	
  	@page = "more"
  	
  	services = Service.limit(16)
  	@row_1 = services[0..3] || Hash.new
  	@row_2 = services[4..7] || Hash.new
  	@row_3 = services[8..11] || Hash.new
  	@row_4 = services[12..15] || Hash.new

  	@rows = [@row_1, @row_2, @row_3, @row_4]

  	if Service.count > 16
  		@nav = "MORE SERVICES >>"
	else
		@nav = ""
  	end
  end

  def more
  	@nav = "<< MORE SERVICES"
  	@page = "list"

  	services = Service.all
  	@row_1 = services[16..19] || Hash.new
  	@row_2 = services[20..23] || Hash.new
  	@row_3 = services[24..27] || Hash.new
  	@row_4 = services[28..31] || Hash.new

  	@rows = [@row_1, @row_2, @row_3, @row_4]
	
  	@services = services[16..33]
  	render('list')
  end

  def create
       
        @service = Service.new(params[:service])
              
	if @service.save
        redirect_to (:action=> 'list')
	else
	render 'create'
	end
  end  

  def edit
	@service = Service.find(params[:id])   
  end
 
  def update
      @service = Service.find(params[:id])
      if @service.update_attributes(params[:service])
      redirect_to (:action => 'show')
      
      end
  end

  def show
	@service = Service.find(params[:id])
  end
 
end
