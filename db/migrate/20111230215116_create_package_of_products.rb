class CreatePackageOfProducts < ActiveRecord::Migration
  def self.up
    create_table :package_of_products do |t|
      t.timestamps
    end
  end

  def self.down
    drop_table :package_of_products
  end
end
