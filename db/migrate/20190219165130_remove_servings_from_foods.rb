class RemoveServingsFromFoods < ActiveRecord::Migration[5.2]
  def change
    remove_column :foods, :servings, :float
  end
end
