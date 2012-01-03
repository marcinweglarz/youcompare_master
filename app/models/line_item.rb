class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :service
  belongs_to :cart

  def total_price
    service.price * quantity
  end
end
