class Restaurant < ApplicationRecord
  CATEGORY = %w(dog cat bird horse)
  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
