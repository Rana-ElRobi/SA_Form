class UseresController < ApplicationController
	def new
		
	end
	def index
    	@uset = User.all
  	end
	def create
		@user = User.new(user_params);

		if @user.save
			redirect_to @user
		else
			render 'new'
		end
	end
	def show
		@user= User.find(params[:id])
	end
private 
	def user_params
		params.require(:user).permit(:name,:team)
		
	end
end