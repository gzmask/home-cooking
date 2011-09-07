class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :require_login
 
  private

   # Finds the User with the ID stored in the session with the key
  # :current_user_id This is a common way to handle user login in
  # a Rails application; logging in sets the session value and
  # logging out removes it.
  def current_user
    @_current_user ||= session[:user_id] &&
      User.find(session[:user_id])
  end
 
  def require_login
    unless logged_in?
      flash[:error] = "You muse be logged in to access this section"
      redirect_to(:controller=>'access',:action=>'login') # halts request cycle
   end 
end

  def logged_in?
	!!current_user 
  end
end
