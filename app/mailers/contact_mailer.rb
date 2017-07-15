class ContactMailer < ApplicationMailer
	default from: 'Irisium <donotreply@irisium.ca>'
	layout 'mailer'

	def contact_email
		mail(to: 'admin@irisium.ca', subject: 'Welcome to My Awesome Site')
	end
end
