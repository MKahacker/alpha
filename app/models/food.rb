class Food < ApplicationRecord
  validates :name, presence: {message: "Name connot be blank"}
  validates :category, presence: {message: "Category shouldn't be blank"}
  validates :calories, presence: {message: "Calories shouldn't be blank"}, numericality: {greater_than_or_equal_to: 0, only_integer: true}
  has_one :day, through: :serving
end
