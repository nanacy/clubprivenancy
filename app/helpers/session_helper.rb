module SessionHelper
	def log_in(an_user)
		session[:user_id] = an_user.id
	end

	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	def logged_in?
		!current_user.nil?
	end

	def log_out
		session.delete(:user_id)
		@current_user = nil
	end
end
