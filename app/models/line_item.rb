
#
#
# @resource Laptop shop Tutorial 3  Wesley Gorman
#
#
class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :service
  belongs_to :cart
#
#
   #@resource Agile Web Development
#
#
  def total_price
    service.price * quantity
  end
end
