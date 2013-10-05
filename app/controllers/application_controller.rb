class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def index
  end
 
  before_filter :basic_http_authentication
  
  before_filter :subdomain_view_path
 
  private
 
  def basic_http_authentication
    if Rails.env.production?
      authenticate_or_request_with_http_basic do |username, password|
        username == 'haleyhouse' && password == 'dbtest123'
      end
    end
  end

  def subdomain_view_path
    prepend_view_path "app/views/#{request.subdomain}_subdomain" if request.subdomain.present?
  end

end
