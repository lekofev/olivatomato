class PedidoMailer < ActionMailer::Base
  # default from: "noreply@bot-ga.com"
  default from: "noreply@olivaytomato.com"

  def nuevo_pedido_email(user)
  	@siteinfo = SiteInfo.find(1)
    @user = user
    mail(to: @user.email, subject: 'Oliva y Tomato: Resumen de pedido')
  end
end
