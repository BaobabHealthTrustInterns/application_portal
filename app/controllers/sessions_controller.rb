class SessionsController < ApplicationController

  # before_filter :confirm_logged_in, :except => [:new]

  def new
    @homepage = "GO TO HOMEPAGE"
  end
 
  def create 
  	user = User.authenticate(params[:username], params[:password])
  	if user
  		session[:user_id] = user.id
  		redirect_to menu_path, :notice => "You have been logged in successfully!"
  	else
      flash[:notice] = "Invalid username/password combination."
  		render "new"
  	end
  end
  def destroy
  	session[:user_id] = nil 
  	redirect_to "/log_in", :notice => "You have been logged out!"
  end
  
  def menu

  end

end
 