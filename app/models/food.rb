class Food < ApplicationRecord
  has_one :nutritions
  belongs_to :days
end
