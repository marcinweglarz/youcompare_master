class Service < ActiveRecord::Base
  has_many :line_items

  SERVICE_TYPES =["Advert", "Package of Products", "Subscription"]

  validates :name, :description,:service_type, :presence => true
  validates :name, :uniqueness => true
  validates :price, :numericality => {:grater_than_or_equal_to => 0.01}
end
