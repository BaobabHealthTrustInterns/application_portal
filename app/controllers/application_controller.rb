class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  private

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = Session.find
  end


  def current_user
  	current_user ||= User.find(session[:user_id]) if 
  	session[:user_id]
  end

  def confirm_logged_in
    unless current_user
      flash[:notice] = "Please log in."
      redirect_to(:controller => "sessions", :action => "new")
      return false
    else
      return true
    end
  end
end