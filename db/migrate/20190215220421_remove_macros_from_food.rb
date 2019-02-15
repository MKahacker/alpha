class RemoveMacrosFromFood < ActiveRecord::Migration[5.2]
  def change
    remove_column :foods, :protein, :int
    remove_column :foods, :carbs, :int
    remove_column :foods, :fats, :int
  end
end
