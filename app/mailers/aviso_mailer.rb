class AvisoMailer < ActionMailer::Base
  default from: "noreply@bot-ga.com"

  def aviso_email(user)
    @user = user
    mail(to: 'rodrigzer@gmail.com', subject: 'Oliva y Tomato : Aviso de nuevo pedido')
  end
end
