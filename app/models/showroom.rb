class Showroom < ActiveRecord::Base
  # ricordarsi da fare rake geocode:all CLASS=Showroom quando si aggiunge uno

attr_accessible :description, :address, :name, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode
end
