class UsersController < ApplicationController
  
  before_filter :save_login_state, :only => [:login, :autheticateUser]

  def login
    
  end


  def autheticateUser
    valmsg = User.validateUser(params[:login_username],params[:login_password])
    if (valmsg == 'validuser')
      session[:user] = params[:login_username]
      redirect_to :controller => 'webportal', :action => 'index'
    else
      redirect_to :login
      flash[:notice] = "Username & password mismatch ! Please try again !!"
      flash[:color]= "invalid"
    end
  end
  
  def logout     
    session[:user] = nil
    redirect_to :login
  end
  
end
