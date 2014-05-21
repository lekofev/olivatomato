class TestMailer < ActionMailer::Base
	default from: "root@bot-ga.com"

  def welcome_email()
    # @user = user
    # @url  = 'http://example.com/login'
    mail(to: "rodrigzer@gmail.com", subject: 'Welcome to My Awesome Site')
  end
end
