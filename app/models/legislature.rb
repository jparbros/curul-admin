class Legislature < ActiveRecord::Base

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
