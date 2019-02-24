class AddDaysToServings < ActiveRecord::Migration[5.2]
  def change
    add_reference :servings, :days, foreign_key: true
  end
end
