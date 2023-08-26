class CreateSideOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :side_options do |t|
      t.string :name
      t.references :special, null: false, foreign_key: true

      t.timestamps
    end
  end
end
