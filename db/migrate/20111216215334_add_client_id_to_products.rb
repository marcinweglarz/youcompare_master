class AddClientIdToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :client_id, :integer
  end

  def self.down
    remove_column :products, :client_id
  end
end
