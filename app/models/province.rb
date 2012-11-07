# == Schema Information
#
# Table name: provinces
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  region_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Province < ActiveRecord::Base
  
  #
  # Associations
  #
  belongs_to :region
  has_many :representatives
end
