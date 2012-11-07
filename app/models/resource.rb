# == Schema Information
#
# Table name: resources
#
#  id            :integer          not null, primary key
#  name          :text
#  url           :text
#  initiative_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#  site_id       :integer
#

class Resource < ActiveRecord::Base
  #
  # Scopes
  #
  default_scope {where(site_id: Site.current_id)}
  
  #
  # Accessors
  #
  attr_accessible :name, :url
end
