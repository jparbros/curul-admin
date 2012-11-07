# == Schema Information
#
# Table name: commissions
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  site_id    :integer
#

class Commission < ActiveRecord::Base

  #
  # Accessors
  #
  attr_accessible :name

  #
  # Associations
  #
  has_and_belongs_to_many :initiatives
  has_and_belongs_to_many :representatives
  
  #
  # Scopes
  #
  default_scope {where(site_id: Site.current_id)}
end
