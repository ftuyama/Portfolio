class AdminController < ApplicationController
  before_filter :authenticate
  def index
    @users = User.all
    @projects = Project.all
  end
end
