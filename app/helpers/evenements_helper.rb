module EvenementsHelper
    def image_categorie (id)
        image_tag("/assets/#{Evenement::categories.key(id)}.jpg")
    end
end
