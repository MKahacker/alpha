class Food < ApplicationRecord
  validates :name, presence: {message: "Name connot be blank"}
  has_one :nutritions
  has_one :days, through: :servings
end
