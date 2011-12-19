class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :name
      t.text :address
      t.integer :telephone
      t.integer :fax
      t.string :email
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
