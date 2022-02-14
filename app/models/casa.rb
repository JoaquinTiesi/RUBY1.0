class Casa < ApplicationRecord
    has_many:casa_personas
    has_many:personas, through: :casa_personas
end
