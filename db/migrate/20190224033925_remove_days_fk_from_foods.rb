class RemoveDaysFkFromFoods < ActiveRecord::Migration[5.2]
  def change
    remove_reference(:foods, :days, index: true, foreign_key: true)
  end
end
