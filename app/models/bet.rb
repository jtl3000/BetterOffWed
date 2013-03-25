class Bet < ActiveRecord::Base
   attr_accessible :user_id, :displayname,  :EngagementDate, :OrigWeddingDate, :Postponement, 
   :NewWeddingDate, :WillDivorce, :DivorceDate, :OneDead, :WhoKillsWho

   belongs_to :user
end
