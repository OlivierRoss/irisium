class AccueilController < ApplicationController

    def index
        @image_evenement = Image.find(Evenement.last.image_id)
    end

    def faq

    end

    def a_propos

    end

    def contact
	ContactMailer.contact_email.deliver_now
    end

end
