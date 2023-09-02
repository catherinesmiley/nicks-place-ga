class CreateSideOptionsSpecials < ActiveRecord::Migration[6.1]
  def change
    create_table :side_options_specials do |t|
      t.references :special, null: false, foreign_key: true
      t.references :side_option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
