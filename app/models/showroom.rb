class Showroom < ActiveRecord::Base
  attr_accessible :description, :latitude, :longitude, :name
end
