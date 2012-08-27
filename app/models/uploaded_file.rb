class UploadedFile < ActiveRecord::Base

  attr_accessor :file
  attr_accessible :amazon_s3_id, :file_type, :name, :user_id, :file
  belongs_to :user

  after_create :upload_to_s3

  def upload_to_s3
    s3 = AWS::S3.new
    b = s3.buckets[APP_CONFIG['amazon_bucket']]

    # here we need to grab the basename of the uploaded file like 'thingamajig.txt'
    # name = file

    # below will be the amazon key. we need to pretty up this code a bit and append the file name, like 'thingamajig.txt'
    amazon_s3_id = user.id.to_s << '-' << created_at.to_s.parameterize.gsub('-', '').gsub('utc', '') # << '-' << name
    b.objects.create(amazon_s3_id, file)
  end
end
