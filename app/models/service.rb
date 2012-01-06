#
# class Service
#  @author Andrzej Poniatowski Student Id x11106077
#  @date 03.01.212
#  @references Agile Web Development... Sam Ruby... page 150
#
#
#   @references   Agile Web Development... Sam Ruby... page 78
#   validate: name ...
#   Validate: price...
#
#
class Service < ActiveRecord::Base
  has_many :line_items
       #@author Andrzej Poniatowski x11106077
      #@references Agile Web Development... Sam Ruby... page 150
  SERVICE_TYPES =["Advert", "Package of Products", "Subscription"]
      #@references   Agile Web Development... Sam Ruby... page 78
  validates :name, :description,:service_type, :presence => true
  validates :name, :uniqueness => true
  validates :price, :numericality => {:grater_than_or_equal_to => 0.01}
  default_scope :order =>'service_type'
end
