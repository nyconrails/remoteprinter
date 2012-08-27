class PublicController < ApplicationController
  
  skip_before_filter :authenticate_user!
  protect_from_forgery
  
end
