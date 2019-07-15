class UserMailer < ApplicationMailer
default from: 'muhammadzair@techcreatix.com'
 
  def welcome_email
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to RailsBlog')
  end
end
end
