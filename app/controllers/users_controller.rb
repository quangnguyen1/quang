class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		render :show
	end

	def create
		@user = User.new(user_params)
		if @user.save
		   flash[:success] = "Welcome to the Sample App!"
		   #log_in @user
		redirect_to @user
		else
			render 'new'
		end
	end
	def new
		@user = User.new
	end

	private
		def user_params
			params.require( :user).permit(:name, :email, :password, :password_confimation)
		end

end
