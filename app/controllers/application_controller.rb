class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :protect_everything, :except => [:index, :show, :find]
  
  def current_user
    Rails.env.production? ? request.env["WEBAUTH_USER"] : "not-a-real-user"
  end
  helper_method :current_user
  
  def authed_user?
    !current_user.blank? and StlpNewsletter::Application.config.authed_users.include?(current_user)
  end
  helper_method :authed_user?
  
  def protect_everything
    unless authed_user?
      flash[:error] = "You do not have permission to view that page."
      redirect_to root_path
    end
  end
end
