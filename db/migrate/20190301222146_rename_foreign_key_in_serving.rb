class RenameForeignKeyInServing < ActiveRecord::Migration[5.2]
  def change
    rename_column :servings, :days_id, :day_id
  end
end
