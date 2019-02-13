class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :calories
      t.integer :protein
      t.integer :carbohydrates
      t.integer :fats

      t.timestamps
    end
  end
end
