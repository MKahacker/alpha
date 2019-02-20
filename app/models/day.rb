class Day < ApplicationRecord
  has_many :foods, through: :servings
end
