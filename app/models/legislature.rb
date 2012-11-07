# == Schema Information
#
# Table name: legislatures
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  active     :boolean          default(FALSE)
#  created_at :datetime
#  updated_at :datetime
#  site_id    :integer
#

class Legislature < ActiveRecord::Base

  #
  # Accessors
  #
  attr_accessible :name, :active

  #
  # Associations
  #
  has_many :comments
  has_many :initiatives
  has_many :representatives

  #
  # Scopes
  #
  default_scope {where(site_id: Site.current_id)}

  def self.active
    where(:active => true).last
  end
end
