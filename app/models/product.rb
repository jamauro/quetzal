class Product < ActiveRecord::Base

  validates :title, :description, :image_url, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  # validates :title, uniqueness: true
  validates :title, length: { 
    minimum: 2, 
    message: :too_short }
  validates :image_url, allow_blank: true, format: {
    with:    %r{\.(gif|jpg|png)\z}i,
    message: 'must be a gif, jpg, or png image'
  }
end
