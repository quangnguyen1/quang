class SessionsController < ApplicationController
  def create
  	
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
  		log_in user
  		params[:session][:remember_me] == '1' ? remember(user) : forget(user)
  		redirect_back_or user 
  	else
  		flash.now[:danger] = 'Invalid email/password combination'
  		render 'new' #new la new.html.erb...render new tai sisstion_controller.
  		
  	end
  end
  def destroy
  	log_out if logged_in?
  	redirect_to root_url#root la duong dan tuyet doi...path la tuong doi
  end
end
