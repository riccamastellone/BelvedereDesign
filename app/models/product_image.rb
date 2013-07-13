class ProductImage < ActiveRecord::Base
  attr_accessible :image_url
  belongs_to :product
end
