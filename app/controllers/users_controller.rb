class UsersController < ApplicationController
  skip_before_filter :authorize, :only => [:create, :new]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    
    if @user.save
      # session[:user_id] = @user.id
      
      UserMailer.delay.welcome(@user)
      redirect_to login_path
    else
      render 'new'
    end
  end
  
end
