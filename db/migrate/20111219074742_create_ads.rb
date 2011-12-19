class CreateAds < ActiveRecord::Migration
  def self.up
    create_table :ads do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.date :purchased_date
      t.date :expiry_date

      t.timestamps
    end
  end

  def self.down
    drop_table :ads
  end
end
