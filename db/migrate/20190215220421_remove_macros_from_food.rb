class RemoveMacrosFromFood < ActiveRecord::Migration[5.2]
  def change
    remove_column :foods, :protein, :integer
    remove_column :foods, :carbs, :integer
    remove_column :foods, :fats, :integer
  end
end
