class LoginController < ApplicationController
  
  def login
    redirect_to params[:referrer] || root_url
  end
  
  def logout
    flash[:notice] = "You have successfully logged out." unless request.env["WEBAUTH_USER"]
    redirect_to :back
  end
  
end