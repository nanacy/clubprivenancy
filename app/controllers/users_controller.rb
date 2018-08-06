class UsersController < ApplicationController
	def new
	end

	def create
		user = User.new(first_name: params["first_name"], last_name: params["last_name"], email: params["email"])
		
		if user.save
			log_in(user)
			redirect_to '/'
		else
			redirect_to '/new'
		end
	end

	def pageprive
		@user = User.all
	end
end
