class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :authenticate_user!, :scope_current_site
  
  # around_filter :scope_current_site
  
  check_authorization :unless => :devise_controller?
  
  def current_site
    @current_site ||= Site.find_by_subdomain! subdomain
  end  
  helper_method :current_site
  
  def scope_current_site
    Site.current_id = current_site.try(:id) || nil
  end
  
  def subdomain
    request.subdomain.match(/(.*).admin/)[1]
  end
end
