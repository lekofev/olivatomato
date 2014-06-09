class AvisoMailer < ActionMailer::Base
  # default from: "noreply@bot-ga.com"
  default from: "noreply@olivaytomato.com"

  def aviso_email(user)
  	@siteinfo = SiteInfo.find(1)
    @user = user
    mail(to: @siteinfo.texto_adicional_1, subject: 'Oliva y Tomato: Aviso de nuevo pedido')
  end
end
