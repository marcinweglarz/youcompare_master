# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Product.create(:name => 'Digital camera', :category => 'Electronics', :description => 'Tink Pink X Hello Kitty DC571
digital camera - five megapixel resolution, 32MB of internal memory, SD slot, 2.4-inch LCD and VGA video of 20fps',
:image_url => '/images/kitty_camera.jpg', :link_url => 'http://www.engadet.com', :price => 250.00)
Product.create(:name => 'Men Watch', :category => 'Watches', :description => 'USB Hidden Flash Drive Watch - perfect
for carrying your data on secret missions, Japanese quartz movement, black polyurethane strap, huge 8GB capacity, dial
size: 1.1" x 1"(29 x 25mm)', :image_url => '/images/watch.jpg', :link_url => 'http://www.thinkgeek.com', :price => 45.00)