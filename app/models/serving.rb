class Serving < ApplicationRecord
  validates :serving, presence: {message: "Cannot leave servings blank."}, numericality: {greater_than_or_equal_to: 0.01}
  belongs_to :food, optional: true
  belongs_to :day, optional: true

  def food_name
    self.food ? self.food.name : nil
  end

  def food_name=(name)
    self.food = Food.find_by(name: name)
  end
end
