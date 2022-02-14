class Persona < ApplicationRecord
    has_many:autos
    has_many:casa_personas
    has_many:casas, through: :casa_personas
end
