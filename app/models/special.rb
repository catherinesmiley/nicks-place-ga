class Special < ApplicationRecord
    has_many :side_options_specials
    has_many :side_options, through: :side_options_specials
end
