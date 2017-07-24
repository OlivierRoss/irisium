module EvenementsHelper
    def image_categorie (id, inverser = false)
        if inverser
            image_tag(asset_url(Evenement::categories.key(id) + "_inv"))
        else
            image_tag(asset_url(Evenement::categories.key(id)))
        end
    end
end
