class PackageOfProduct < ActiveRecord::Base
  default_scope :order => 'name'
end
