# == Schema Information
#
# Table name: political_parties
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  logo       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  site_id    :integer
#

class PoliticalParty < ActiveRecord::Base

  #
  # Accessors
  #
  attr_accessible :name, :logo, :logo_cache

  #
  # Associations
  #
  has_many :representatives

  #
  # Uploader
  #
  mount_uploader :logo, LogoUploader

  #
  # Scope
  #
  scope :political_parties, where('id NOT IN (8,9)')
  default_scope {where(site_id: Site.current_id)}

  def initials
    name.split(' ').collect {|word| word.first.downcase}.join('')
  end
end
