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

@food = Food.create!(
  name: "Almond Milk",
  category: "Nondairy Milk",
  calories: 30
)

Serving.create!(
  serving:1.0,
  food_id: @food.id,
  day_id: @day1.id
)
#=begin@serv = Serving.create!(
#  serving: 1.5,
#)=end
