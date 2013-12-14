class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    @current_user ||= session[:id] && User.find_by_id(session[:id]) # Use find_by_id to get nil instead of an error if user doesn't exist
  end
  
  helper_method :current_user #Make current_user avaiable in views
end
