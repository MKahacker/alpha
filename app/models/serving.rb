class Serving < ApplicationRecord
  validates :serving, presence: {message: "Cannot leave servings blank."}
  belongs_to :foods
  belongs_to :days
end
