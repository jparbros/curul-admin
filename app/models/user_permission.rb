# == Schema Information
#
# Table name: user_permissions
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  permission_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class UserPermission < ActiveRecord::Base
  attr_accessible :permission_id, :user_id
  
  belongs_to :user
  belongs_to :permission
end
