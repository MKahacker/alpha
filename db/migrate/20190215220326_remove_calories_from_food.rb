class RemoveCaloriesFromFood < ActiveRecord::Migration[5.2]
  def change
    remove_column :foods, :calories, :int
  end
end
