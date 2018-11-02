class Event < ActiveRecord::Base
  #for user relation to event
  belongs_to :user
  has_many :favourites, dependent: :destroy
  #google geolocation
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  mount_uploader :image, ImageUploader

  def find_favourite(user)
    Favourite.find_by(event_id: self.id, user_id: user.id)
  end
end
