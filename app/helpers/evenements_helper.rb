module EvenementsHelper
    def image_categorie (id, inverser = false)
        if inverser
            image_tag(Evenement::categories.key(id) + "_inv.svg", :title => Evenement::categories.key(id), :alt => Evenement::categories.key(id))
        else
            image_tag(Evenement::categories.key(id) + ".svg", :title => Evenement::categories.key(id), :alt => Evenement::categories.key(id))
        end
    end
end
