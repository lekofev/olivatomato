class LibroMailer < ActionMailer::Base
  default from: "noreply@olivaytomato.com"

  def nuevo_libro_email(user)
  	@siteinfo = SiteInfo.find(1)
    @user = user
    mail(to: @user.email, subject: 'Oliva y Tomato: Libro de Reclamaciones.')
  end
end
