class Service < ActiveRecord::Base

  default_scope :order => 'type'
  has_many :line_items

  end






