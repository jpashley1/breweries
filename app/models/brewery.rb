class Brewery < ApplicationRecord
    # geocoded_by :address
    # reverse_geocoded_by :lat, :long
    # after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
    # after_validation :reverse_geocode, if: ->(obj){ obj.latitude.present? and obj.longitude.present? }


end
