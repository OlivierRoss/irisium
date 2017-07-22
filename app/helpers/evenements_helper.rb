module EvenementsHelper
    def image_categorie (id)
        image_tag(asset_url(Evenement::categories.key(id)))
    end
end
