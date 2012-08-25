class Transaction < ActiveRecord::Base
  attr_accessible :amount, :job_id, :type, :user_id
end
