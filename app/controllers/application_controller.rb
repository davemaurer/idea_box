class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  #specifies current_user is a helper method so corresponding views can use it
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    #this way so if no session we don't .find nil
  end
end
