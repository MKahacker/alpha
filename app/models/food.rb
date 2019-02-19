class Food < ApplicationRecord
  validates :calories, presence: true
  has_one :nutritions
  has_one :days, through :servings 
end
