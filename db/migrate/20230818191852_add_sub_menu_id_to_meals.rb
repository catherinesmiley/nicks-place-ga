class AddSubMenuIdToMeals < ActiveRecord::Migration[6.1]
  def change
    add_column :meals, :sub_menu_id, :integer, foreign_key: true
  end
end