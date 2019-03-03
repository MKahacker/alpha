class Serving < ApplicationRecord
  validates :serving, presence: {message: "Cannot leave servings blank."}
  belongs_to :food, optional: true
  belongs_to :day, optional: true
end
