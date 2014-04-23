class TestMailer < ActionMailer::Base
	default from: "prueba@yomequiero.com.pe"

  def welcome_email()
    # @user = user
    # @url  = 'http://example.com/login'
    mail(to: "rodrigzer@gmail.com", subject: 'Welcome to My Awesome Site')
  end
end
