class ServicesController < ApplicationController
	
  def new
	@service = Service.new
  end

  def show
	
  end

  def edit
  end

  def list
	@service_names = Service.order("services.name ASC")
	@services = Service.all
  	@page = "more"
  	
  	services = Service.limit(16)
  	@row_1 = services[0..3] || Hash.new
  	@row_2 = services[4..7] || Hash.new
  	@row_3 = services[8..11] || Hash.new
  	@row_4 = services[12..15] || Hash.new

  	@rows = [@row_1, @row_2, @row_3, @row_4]

  	if Service.count > 16
  		@nav = "More services >>"
	else
		@nav = ""
  	end
  end

  def more
  	@nav = "more"
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
        
	end
  end  
   def hit_counts
        
   end
end
