class Meal < ApplicationRecord
   has_many :menu_meals
   has_many :menus, through: :menu_meals
   belongs_to :sub_menu, optional: true

   def formatted_price
      '%.2f' % price
   end 
end
