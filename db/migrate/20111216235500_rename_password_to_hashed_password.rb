class RenamePasswordToHashedPassword < ActiveRecord::Migration
  def self.up
    rename_column :clients, :password, :hashed_password
  end

  def self.down
    rename_column :clients, :hashed_password, :password
  end
end