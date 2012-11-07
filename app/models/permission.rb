# == Schema Information
#
# Table name: permissions
#
#  id            :integer          not null, primary key
#  action        :string(255)
#  subject_class :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  site_id       :integer
#

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
