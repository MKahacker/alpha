# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Food.destroy_all
Nutrition.destroy_all
Day.destroy_all

@day1 = Day.create(
  date:Time.new.to_s,
  calories: 40,
  water: 3.0
)

@food = Food.create(
  name: "Almond Milk",
  category: "Nondairy Milk",
  servings: 1.0,
  day_id: @day1
)

@nut = Nutrition.create(
  calories: 40,
  carbs: 1,
  protein: 3,
  fats: 3,
  food_id: @food
)
