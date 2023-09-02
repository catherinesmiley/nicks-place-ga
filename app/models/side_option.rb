class SideOption < ApplicationRecord
  has_many :side_options_specials
  has_many :specials, through: :side_options_specials
end
