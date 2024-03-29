class ApplicationController < ActionController::Base
  protect_from_forgery
  protected

  #This method is for preventing users to access confidential pages withuot logging in 
  def authenticate_user
    if session[:user]
      return true
    else
      redirect_to(:controller => 'users', :action => 'login')
      return false
    end
  end

  #This method is for preventing users to access Signup & Login Page without logout
  def save_login_state
    if session[:user]
      redirect_to(:controller => 'webportal', :action => 'index')
      return false
    else
      return true
    end
  end

end
