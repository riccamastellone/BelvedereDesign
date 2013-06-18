class Product < ActiveRecord::Base
  attr_accessible :description, :designer_id, :id, :title
end
