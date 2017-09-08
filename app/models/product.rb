class Product < ApplicationRecord

  validates :title, uniqueness: true, presence: true
  validates :description, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}, presence: true
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif\jpg\png\Z)}i,
    message: 'must be a URL for gif, jpg or png image.'
  }
end
