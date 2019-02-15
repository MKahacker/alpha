class CreateNutritions < ActiveRecord::Migration[5.2]
  def change
    create_table :nutritions do |t|
      t.integer :calories
      t.integer :carbs
      t.integer :protein
      t.integer :fats

      t.timestamps
    end
  end
end
