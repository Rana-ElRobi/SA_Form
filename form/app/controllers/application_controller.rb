class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def new
  	
  end

  def create
   render plain: params[:user].inspect 	
  end

  protect_from_forgery with: :exception
end
