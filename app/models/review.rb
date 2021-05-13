class Review < ApplicationRecord
  belongs_to :list
  validates :rating, inclusion: { in: 0..5, allow_nil: false }, numericality: { only_integer: true }
  validates :comment, presence: true
end
