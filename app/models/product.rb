
 #  @reference Laptop_Shop_Tutorial_2 & 4 Wesley Gorman
 #  @resource Agile Web Development... Sam Ruby... page 78
 #
class Product < ActiveRecord::Base
  belongs_to :client
  default_scope :order => 'name'

 # @resource Agile Web Development... Sam Ruby... page 78
  validates :name, :category, :description, :image_url, :presence => true

 # @resource http://www.slideshare.net/jasonjnoble/validation-unit-testing
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :image_url, :format => {
      :with => %r{\.(gif|jpg|png)$}i,
      :message => 'must be a URL for GIF, JPG or PNG image.'
  }

  attr_accessible :name, :category, :description, :image_url, :link_url, :price

  def self.search(search_query)
    if search_query
      find(:all, :conditions => ['name LIKE ?', "%#{search_query}%"])
    else
      find(:all)
    end
  end
end
