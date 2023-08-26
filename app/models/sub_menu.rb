class SubMenu < ApplicationRecord
  belongs_to :menu
  has_many :meals
end
