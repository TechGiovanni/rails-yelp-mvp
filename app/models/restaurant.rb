class Restaurant < ApplicationRecord
  has_many :reviews
  category = %w[chinese italian japanese french belgian]

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: category, message: 'Please enter a valid size' }
end
