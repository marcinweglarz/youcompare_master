class CombineItemsInCart < ActiveRecord::Migration
  def self.up

    Cart.all.each do |cart|
      sums = cart.line_items.group(:service_id).sum(:quantity)

      sums.each do |service_id, quantity|
        if quantity > 1

          cart.line_items.where(:service_id => service_id).delete_all

          cart.line_items.create(:service_id => service_id, :quantity => quantity)
        end
      end
    end
end
  def self.down

      LineItem.where("quantity > 1").each do |line_item|

        line_item.quantity.times do
          LineItem.create :cart_id => line_item.cart_id, :service_id => line_item.service_id, :quantity=>1
        end
         line_item.destroy
      end
    end
 end