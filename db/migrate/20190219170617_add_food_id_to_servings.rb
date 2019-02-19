class AddFoodIdToServings < ActiveRecord::Migration[5.2]
  def change
    add_reference :servings, :food, foreign_key: true
  end
end
