class UserMailer < ActionMailer::Base
  
  def welcome(user)
    @user = user
    
    mail to: @user.email, from: 'heathered@gmail.com', subject: "Welcome to VisDir!"
  end
  
end
