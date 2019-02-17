class AddDayIdToFood < ActiveRecord::Migration[5.2]
  def change
    add_reference :foods, :day, foreign_key: true
  end
end
