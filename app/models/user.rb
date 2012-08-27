class User < ActiveRecord::Base

  attr_accessible :email, :first_name, :last_name, :password_digest, :password, :password_confirmationU

  validates_presence_of :email, :password, :first_name, :last_name

  has_secure_password
  has_many :transactions
  has_many :jobs
  has_many :uploaded_files

end
