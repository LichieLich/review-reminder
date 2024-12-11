class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @project = current_user.projects.first
    redirect_to @project
  end
end