class AddColumnsToFood < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :calories, :integer
    add_column :foods, :carbohydrates, :integer
    add_column :foods, :protein, :integer
    add_column :foods, :fat, :integer
  end
end
