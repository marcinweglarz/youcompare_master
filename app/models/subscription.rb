class Subscription < Service
default_scope :order => 'name'
end