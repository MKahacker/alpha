class RemoveCarbohydratesFromFood < ActiveRecord::Migration[5.2]
  def change
    remove_column :foods, :carbohydrates, :integer
  end
end
