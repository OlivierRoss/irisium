class Evenement < ApplicationRecord
    has_one :image
    enum categories: [:general, :spectacle, :social, :vernissage]
end
