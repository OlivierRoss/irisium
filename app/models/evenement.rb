class Evenement < ApplicationRecord
    has_one :image
    enum categories: [:arts_mixtes, :a_ne_pas_manquer, :arts_visuels, :porte_ouverte, :reseautage, :diffusion]
end
