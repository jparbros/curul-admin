# == Schema Information
#
# Table name: regions
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  slug       :string(255)
#  site_id    :integer
#

class Region < ActiveRecord::Base
  
  #
  # Associations
  #
  has_many :provinces
  has_many :representatives
  
  #
  # Scopes
  #
  default_scope {where(site_id: Site.current_id)}
end
