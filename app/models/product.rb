class Product < ActiveRecord::Base
  attr_accessible :description, :name
  has_one :designer
  has_many :product_images
end
