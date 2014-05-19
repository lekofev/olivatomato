class PedidoMailer < ActionMailer::Base
  default from: "noreply@bot-ga.com"

  def nuevo_pedido_email(user)
    @user = user
    mail(to: @user['email'], subject: 'Oliva y Tomato : Resumen de pedido')
  end
end
