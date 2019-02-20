class Food < ApplicationRecord
  validates :name, presence: true
  has_one :nutritions
  has_one :days, through: :servings
end
