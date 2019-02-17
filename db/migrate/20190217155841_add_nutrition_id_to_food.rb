class AddNutritionIdToFood < ActiveRecord::Migration[5.2]
  def change
    add_reference :foods, :nutrition, foreign_key: true
  end
end
