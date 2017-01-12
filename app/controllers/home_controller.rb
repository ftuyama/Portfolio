class HomeController < ApplicationController

	def index
		# Gets user from URL parameter
		username = params[:user]
		@user = User.find_by_username(username)
		@user ||= default_user
	end

	private
		def default_user
			User.find_by_username("ftuyama") || User.create(:username => "ftuyama", :name => "Felipe Tuyama")
		end
end
