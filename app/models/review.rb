class Review < ApplicationRecord
  belongs_to :restaurant
  validates_associated :restaurant
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5]}
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :content, presence: true
end
