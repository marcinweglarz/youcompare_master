class Subscription < ActiveRecord::Base

default_scope :order => 'name'
end
