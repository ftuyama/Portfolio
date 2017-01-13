class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected
    # Returns the currently logged in user or nil if there isn't one
    def current_user
      return unless session[:session_id]
      @current_user ||= User.find_by_id(session[:session_id])
    end

    # Make current_user available in templates as a helper
    helper_method :current_user

    # Filter method to enforce a login requirement
    # Apply as a before_filter on any controller you want to protect
    def authenticate
      logged_in? ? true : access_denied
    end

    # Predicate method to test for a logged user
    def logged_in?
      current_user.is_a? User
    end

    helper_method :logged_in?

    def access_denied
      redirect_to login_path, :notice => "Please log in to continue" and return false
    end

end
