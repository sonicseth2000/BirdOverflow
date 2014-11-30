class LogoutController < ApplicationController
    def new
    @session = Session.new
    end
  
    def create  
      user = User.find_by_username(params[:username]) 
      if user && user.authenticate(params[:password])  
        session[:id] = user.id  
        reset_session
        redirect_to root_url, :notice => "Logged in!"  
      else  
        flash.now.alert = "Invalid email or password"  
        render "new"  
      end  
    end   
  
  def destroy  
    session.delete(:id) 
    redirect_to root_url, :notice => "Logged out!"  
  end 
end
