class Serving < ApplicationRecord
  validates :serving, presence: {message: "Cannot leave servings blank."}, numericality: {greater_than_or_equal_to: 0.0}
  belongs_to :food, optional: true
  belongs_to :day, optional: true
end
