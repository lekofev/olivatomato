class ContactoMailer < ActionMailer::Base
  default from: "noreply@olivaytomato.com"

  def nuevo_contacto_email(user)
  	@siteinfo = SiteInfo.find(1)
    @user = user
    mail(to: @user.email, subject: 'Oliva y Tomato: Gracias por escribirnos.')
  end
end
