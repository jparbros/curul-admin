# == Schema Information
#
# Table name: topics
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  site_id    :integer
#

class Topic < ActiveRecord::Base

  #
  # Accessors
  #
  attr_accessible :name

  #
  # Associations
  #
  has_and_belongs_to_many :initiatives

  #
  # Validations
  #
  validates :name, :presence => true, :uniqueness => true

  #
  # Scopes
  #
  default_scope :order => 'name ASC'
  default_scope {where(site_id: Site.current_id)}
end
