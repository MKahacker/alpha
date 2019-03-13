# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Food.destroy_all
Day.destroy_all
Serving.destroy_all

@day1 = Day.create!(
  date:Time.new,
  calories: 40
)

@food1 = Food.create!(
  name: "Almond Milk",
  category: "Nondairy Milk",
  calories: 30,
  carbohydrates: 1,
  protein: 2,
  fat: 2.5
)

@food2 = Food.create!(
  name: "Salted Peanuts",
  category: "Nuts",
  calories: 290,
  carbohydrates: 3,
  protein: 10,
  fat: 20
)

Serving.create!(
  serving:1.0,
  food_id: @food1.id,
  day_id: @day1.id
)
Serving.create!(
  serving:1.0,
  food_id: @food2.id,
  day_id: @day1.id
)
#=begin@serv = Serving.create!(
#  serving: 1.5,
#)=end
