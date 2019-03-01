class Serving < ApplicationRecord
  validates :serving, presence: {message: "Cannot leave servings blank."}
  belongs_to :foods, optional: true
  belongs_to :days, optional: true
end
