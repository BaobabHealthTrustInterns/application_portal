class UsersController < ApplicationController
  
  before_filter :confirm_logged_in
  helper_method :sort_column, :sort_direction

  def index
    @users = User.order(sort_column + ' ' + sort_direction).paginate(:per_page => 5, :page => params[:page])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Successfully signed up new administrator."
      redirect_to(:controller => "sessions", :action => "menu")
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated administrator."
      redirect_to(:controller => "sessions", :action => "menu")
    else
      render "edit"
    end
  end

  def delete
    @user = User.find(params[:id])
  end

  def destroy
    User.find(params[:id]).destroy
    
    redirect_to('index', :notice => "Successfully deleted administrator!")
  end

  def sort_column
    User.column_names.include?(params[:sort]) ? params[:sort] : "first_name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

end
