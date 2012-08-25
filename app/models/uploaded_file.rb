class UploadedFile < ActiveRecord::Base
  attr_accessible :amazon_s3_id, :file_type, :name, :user_id
end
