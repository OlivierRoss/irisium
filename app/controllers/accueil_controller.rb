class AccueilController < ApplicationController
    skip_before_action :verify_authenticity_token, :only => [:demande_contact]

    def index
        @image_evenement = Image.find(Evenement.last.image_id)
    end

    def faq

    end

    def a_propos

    end

    def contact

    end

    def demande_contact
        ContactMailer.contact_email(params).deliver_now
        redirect_to root_path
    end

end
