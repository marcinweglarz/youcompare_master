class Ad < ActiveRecord::Base
  default_scope :order => 'name'
end
