class JobType < ActiveRecord::Base
  attr_accessible :is_active, :name, :price_per_page
end
