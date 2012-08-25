class Job < ActiveRecord::Base
  attr_accessible :is_complete, :job_type_id, :name, :pages, :printer_id, :status, :user_id
end
