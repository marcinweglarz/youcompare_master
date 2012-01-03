class Advert < Service
    default_scope :order => 'name'
end