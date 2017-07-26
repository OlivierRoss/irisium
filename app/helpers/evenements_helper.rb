module EvenementsHelper
    def image_categorie (id, inverser = false)
        if inverser
            image_tag(Evenement::categories.key(id) + "_inv.svg")
        else
            image_tag(Evenement::categories.key(id) + ".svg")
        end
    end
end
