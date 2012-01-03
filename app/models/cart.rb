class Cart < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy
  def add_service(service)
      current_item = line_items.where(:service_id => service.id).first
      if current_item
        current_item.quantity += 1
      else
        current_item = LineItem.new(:service_id => service.id)
        line_items << current_item
      end
      current_item
    end

       def total_price
total = 0
line_items.each do |line_item|
total += line_item.service.price * line_item.quantity
end
total
end
end
