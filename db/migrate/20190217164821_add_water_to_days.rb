class AddWaterToDays < ActiveRecord::Migration[5.2]
  def change
    add_column :days, :water, :float
  end
end
