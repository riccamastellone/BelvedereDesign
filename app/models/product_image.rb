class ProductImage < ActiveRecord::Base
  attr_accessible :id, :image, :product_id
end
