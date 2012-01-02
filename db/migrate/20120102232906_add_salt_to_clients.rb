class AddSaltToClients < ActiveRecord::Migration
  def self.up
    add_column :clients, :salt, :string
  end

  def self.down
    remove_column :clients, :salt
  end
end
