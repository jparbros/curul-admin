# == Schema Information
#
# Table name: sites
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  host       :string(255)
#  path       :string(255)
#  locale     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  subdomain  :string(255)
#

class Site < ActiveRecord::Base
  
  #
  # Accessors
  #
  attr_accessible :name, :subdomain, :custom_layout, :custom_layout_content
  cattr_accessor :current_id
end
