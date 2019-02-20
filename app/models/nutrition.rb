class Nutrition < ApplicationRecord
  validates :calories, presence: true
  belongs_to :foods
end
