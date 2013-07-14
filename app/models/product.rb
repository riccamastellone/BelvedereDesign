class Product < ActiveRecord::Base
  attr_accessible :description, :name, :designer_id, :featured
  has_one :designer
  has_many :product_images
  belongs_to :categoria
end
