class Service < ActiveRecord::Base

class Advert < Service
end

class Package_of_products < Service
end

class Subscription < Service

end
  default_scope :order => 'type'
  has_many :line_items
end
