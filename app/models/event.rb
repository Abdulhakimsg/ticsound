class Event < ActiveRecord::Base
  #for user relation to event
  belongs_to :user
  has_many :favourites, dependent: :destroy
  #google geolocation
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
