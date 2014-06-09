class AlertaLibroMailer < ActionMailer::Base
  default from: "noreply@olivaytomato.com"

  def alerta_libro_email(user)
  	@siteinfo = SiteInfo.find(1)
    @user = user
    mail(to: @siteinfo.texto_adicional_1, subject: 'Oliva y Tomato: Nuevo registro en el Libro de Reclamaciones.')
  end
end
