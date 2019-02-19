class ChangeDateTypeInDays < ActiveRecord::Migration[5.2]
  def change
    change_column :days, :date, :datetime
  end
end
