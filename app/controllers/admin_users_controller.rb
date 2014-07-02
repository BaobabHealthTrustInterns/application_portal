class AdminUsersController < ApplicationController
 
	def admin_page
	@usernames = AdminUser.all
	end

	def sign_in
	render 'sign_in'
	end

	def create
	
        @admin_user = AdminUser.new(params[:admin_user])
       
        if @admin_user.save   
 	redirect_to (:action => 'list')
        else 
          render 'create'
	end
	end

        def show
	
	@admin_users = AdminUser.find_by_first_name(params[:admin_user])

	end

	def new
	@admin_user = AdminUser.new
	end

        def list
	@admin_users = AdminUser.order("admin_users.username DESC")
	end

	def service_functions
	@services = Service.order("services.name DESC")
	end

	def reports
	end
end
