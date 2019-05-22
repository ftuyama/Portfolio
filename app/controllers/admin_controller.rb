class AdminController < ApplicationController
  before_action :authenticate
  def index
    @users = User.all
    @projects = Project.all
  end
end
