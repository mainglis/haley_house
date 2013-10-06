class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def index
  end
 
  before_filter :basic_http_authentication
 
  private
 
  def basic_http_authentication
    if false
    # if Rails.env.production?
      authenticate_or_request_with_http_basic do |username, password|
        username == 'haleyhouse' && password == 'dbtest123'
      end
    end
  end
end
