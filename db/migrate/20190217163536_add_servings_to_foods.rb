class AddServingsToFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :servings, :float
  end
end
