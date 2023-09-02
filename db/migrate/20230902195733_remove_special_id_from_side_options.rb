class RemoveSpecialIdFromSideOptions < ActiveRecord::Migration[6.1]
  def change
    remove_column :side_options, :special_id, :bigint
  end
end
