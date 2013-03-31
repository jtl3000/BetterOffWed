class Payment < ActiveRecord::Base
  attr_accessible :amount, :displayname, :user_id
end
