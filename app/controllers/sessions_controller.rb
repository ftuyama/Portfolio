class SessionsController < ApplicationController

  def new
    if logged_in?
      redirect_to "/users", :notice => "You are already logged in"
    end
  end

  def auth
    @error = "entered auth"
    if user = User.authenticate(params[:username], params[:password])
      session[:session_id] = user.id
      redirect_to '/users', :notice => "Logged in successfully"
    else
      @error = "Invalid login/password combination"
      render :action => 'new'
    end
  end

  def destroy
    reset_session
    redirect_to "/users", :notice => "Logged out successfully"
  end
end
