class CreateNutritions < ActiveRecord::Migration[5.2]
  def change
    create_table :nutritions do |t|
      t.int :calories
      t.int :carbs
      t.int :protein
      t.int :fats

      t.timestamps
    end
  end
end
