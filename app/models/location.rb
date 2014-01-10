class Location < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode

  belongs_to :locationable, polymorphic: true
end