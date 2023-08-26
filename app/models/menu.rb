class Menu < ApplicationRecord
    has_many :sub_menus
    has_many :menu_meals
    has_many :meals, through: :menu_meals
end
