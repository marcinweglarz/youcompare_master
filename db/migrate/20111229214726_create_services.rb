class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
      t.string :type
      t.string :name
      t.text :description
      t.decimal :price
      t.timestamps
    end
  end

  def self.down
    drop_table :services
  end
end
