class HomeController < ApplicationController
	skip_before_filter :verify_authenticity_token

	def index
		# Gets user from URL parameter
		username = params[:user]
		@user = User.find_by_username(username)
		@user ||= default_user
	end

	def alive
	end

	def send_email
		Contact.email_me(params[:name], params[:mail], params[:message])
		render text: "success", status: 200
	end

	private
		def default_user
			User.find_by_username("ftuyama") || User.create(:username => "ftuyama", :name => "Felipe Tuyama", :password => "123", :password_confirmation => "123")
		end
end
