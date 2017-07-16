class ContactMailer < ApplicationMailer
	default from: 'Irisium <donotreply@irisium.ca>'
	layout 'mailer'

	def contact_email (params)
        @params = params
		mail(to: 'admin@irisium.ca', subject: 'Demande de contact')
	end
end
