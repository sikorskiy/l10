class Course < ApplicationRecord
  validates :name, length: { minimum: 4 }
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
