class RemoveWaterFromDays < ActiveRecord::Migration[5.2]
  def change
    remove_column :days, :water, :float
  end
end
