class Permission < ActiveRecord::Base
  
  #
  # Accessors
  #
  attr_accessible :action, :subject_class
  
  #
  # Scopes
  #
  # default_scope {where(site_id: Site.current_id)}
end
