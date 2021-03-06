class SessionsController < ApplicationController
  def create
  	
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
  		log_in user
  		redirect_to user 
  	else
  		flash.now[:danger] = 'Invalid email/password combination'
  		render 'new' #new la new.html.erb...render new tai sisstion_controller.
  		
  	end
  end
  def destroy
  	log_out
  	redirect_to root_url
  end
end
