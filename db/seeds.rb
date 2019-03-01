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
Serving.destroy_all

@day1 = Day.create(
  date:Time.new,
  calories: 40
)

@food = Food.create(
  name: "Almond Milk",
  category: "Nondairy Milk"
)

@nut = Nutrition.create(
  calories: 40,
  carbs: 1,
  protein: 3,
  fats: 3,
  food_id: @food
)

@serv = Serving.create(
  serving: 1.5,
  food_id: @food,
  days_id: @day1
)
