class CreateSpecials < ActiveRecord::Migration[6.1]
  def change
    create_table :specials do |t|
      t.string :name
      t.decimal :price
      t.string :choice
      t.integer :day_of_week

      t.timestamps
    end
  end
end
