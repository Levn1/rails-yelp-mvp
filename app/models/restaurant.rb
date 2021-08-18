class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # Linking restaurant to reviews and making them be dependent on the restaurant

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
end
