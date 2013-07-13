class Showroom < ActiveRecord::Base
  attr_accessible :description, :address, :name, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode
end
