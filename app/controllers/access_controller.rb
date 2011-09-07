class AccessController < ApplicationController
	skip_before_filter :require_login, :except => [:index, :menu]

	def index
		menu
		render('menu')
	end

	def menu
 		#display text & links
	end

	 def login
		#direct to menu page, unless user did not logged in
		if session[:user_id] != nil
			#redirect_to(:controller=>access,:action=>:menu)		
			render('menu')
		end
	 end

	def attempt_login
		authorized_user = User.authenticate(params[:username], params[:password])
		 if authorized_user
		      session[:user_id] = authorized_user.id
		      session[:username] = authorized_user.user_name
      		      flash[:notice] = "You are now logged in."
      		      redirect_to(:action => 'menu')
		else
      		      flash[:notice] = "Invalid username/password combination."
      		      redirect_to(:action => 'login')
   		 end

	end

	def logout
		    session[:user_id] = nil
		    session[:username] = nil
		    flash[:notice] = "You have been logged out."
		    redirect_to(:action => "login")
	end

	def register
		redirect_to(:controller=>'users',:action=>'new')
	end

=begin 
  def current_user
    @_current_user ||= session[:user_id] &&
      User.find(session[:user_id])
  end

  def logged_in?
	!!current_user
  end 
=end
end
