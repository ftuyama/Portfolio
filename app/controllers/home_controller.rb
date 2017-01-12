class HomeController < ApplicationController

	def index
		username = params[:user]
		@user = User.find_by_username(username)
		# Default user
		@user ||= User.find_by_username("ftuyama")
	end

end
