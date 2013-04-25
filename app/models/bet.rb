class Bet < ActiveRecord::Base
   attr_accessible :user_id, :displayname,  :EngagementDate, :OrigWeddingDate, :Postponement, 
   :NewWeddingDate, :WillDivorce, :DivorceDate, :OneDead, :WhoKillsWho, :pregnant

   has_one :user
   accepts_nested_attributes_for :user

  after_save :set_bet_id_in_users

private

  def set_bet_id_in_users
    @user = User.find(Bet.last.user_id)
    @user.update_attributes({:bet_id => Bet.last.id})
    
  end


end
