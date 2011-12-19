class CreatePackageOfProducts < ActiveRecord::Migration
  def self.up
    create_table :package_of_products do |t|
      t.string :name, :null=>false
      t.text :description
      t.decimal :price
      t.date :purchased_date
      t.date :expiry_date
      t.timestamps
    end
  end

  def self.down
    drop_table :package_of_products
  end
end
