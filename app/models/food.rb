class Food < ApplicationRecord
  validates :calories, presence: true
  has_one :nutritions
  belongs_to :days
end
