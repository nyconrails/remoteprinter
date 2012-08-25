class UsersController < ApplicationController
  inherit_resources
  
  skip_before_filter :authenticate_user!
  
  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Your account was successfully created!"
      redirect_to dashboard_path
    else
      render 'new'
    end
  end
  
end