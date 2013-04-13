class Bet < ActiveRecord::Base
   attr_accessible :user_id, :displayname,  :EngagementDate, :OrigWeddingDate, :Postponement, 
   :NewWeddingDate, :WillDivorce, :DivorceDate, :OneDead, :WhoKillsWho

   has_one :user
   accepts_nested_attributes_for :user

  after_save :set_bet_id_in_users

  def set_bet_id_in_users
    @bet.update_attributes({:current_user => Bet.last.id})
    
  end


end
