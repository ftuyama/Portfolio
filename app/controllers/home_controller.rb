class HomeController < ApplicationController

	def index
		# Gets user from URL parameter
		username = params[:user]
		@user = User.find_by_username(username)
		# Default user
		@user ||= User.find_by_username("ftuyama")
	end
end
