class Food < ApplicationRecord
  validates :name, presence: {message: "Name connot be blank"}
  validates :category, presence: {message: "Category shouldn't be black"}
  has_one :nutritions
  has_one :days, through: :servings
end
