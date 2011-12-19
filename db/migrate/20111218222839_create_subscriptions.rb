class CreateSubscriptions < ActiveRecord::Migration
  def self.up
    create_table :subscriptions do |t|
        t.string :name,   :null=>false
        t.text :description
        t.decimal :price
        t.date :purchased_date
        t.date :expiry_date
      t.timestamps
    end
  end

  def self.down
    drop_table :subscriptions
  end
end
