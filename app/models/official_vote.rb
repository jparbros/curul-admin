# == Schema Information
#
# Table name: official_votes
#
#  id                 :integer          not null, primary key
#  political_party_id :integer
#  votes              :integer
#  initiative_id      :integer
#  created_at         :datetime
#  updated_at         :datetime
#  site_id            :integer
#

class OfficialVote < ActiveRecord::Base
  
  #
  # Associations
  #
  belongs_to :initiative
  belongs_to :political_party
  
  #
  # Accessors
  #
  attr_accessible :political_party, :political_party_id, :initiative, :initiative_id, :votes
  
  #
  # Scopes
  #
  default_scope {where(site_id: Site.current_id)}
  
  def percentage
    if initiative.official_vote_up > 0
      ((votes.to_i * 100)/initiative.official_vote_up.to_i)
    else
      0
    end
  end
end
