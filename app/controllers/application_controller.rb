class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
  protect_from_forgery
  def load_general_data
    @my_projects = current_user.projects if user_signed_in?
  end
end
