class AdminController < ApplicationController
  def index
    @users = User.all
    @projects = Project.all
  end
end
