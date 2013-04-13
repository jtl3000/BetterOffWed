class Bet < ActiveRecord::Base
   attr_accessible :user_id, :displayname,  :EngagementDate, :OrigWeddingDate, :Postponement, 
   :NewWeddingDate, :WillDivorce, :DivorceDate, :OneDead, :WhoKillsWho

   has_one :user
   accepts_nested_attributes_for :user
end
