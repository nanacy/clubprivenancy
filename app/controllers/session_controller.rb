class SessionController < ApplicationController
  def new
  end

  def create
  	@mdp = "abcd"
  	@email = params["email"]
  	user = User.find_by(email: @email)
  	if user && (params["mdp"]==@mdp)
  		log_in(user)
  		redirect_to root_path
  	else 
  		redirect_to '/login'
  	end

  end

  def destroy
  	log_out
  	redirect_to root_path
  end
end
