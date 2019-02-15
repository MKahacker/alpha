class AddCategoryToFood < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :category, :string
  end
end
