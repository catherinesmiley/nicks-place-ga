class Meal < ApplicationRecord
   has_many :menu_meals
   has_many :menus, through: :menu_meals
end
