class UserMailer < ApplicationMailer
	default from: 'comptethp@gmail.com'
  	layout 'welcome_email'
	def welcome_email(user_mail)
     mail(from: "comptethp@gmail.com", to: user_mail,
          subject: "Bienvenue chez Obviews!"
          )
end
end