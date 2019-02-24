class Removedaysfromfoods < ActiveRecord::Migration[5.2]
  def change
    remove_reference(:foods, :day, index: true, foreign_key: true)
  end
end
