class Location < ApplicationRecord
  class Location < ApplicationRecord
    geocoded_by :address   # can be any method or column name that returns the address
    after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
  end
  
end
