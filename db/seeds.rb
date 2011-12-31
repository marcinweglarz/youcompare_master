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

Advert.create(:name => 'Main page Baner.', :description=> 'Promote your shop on our page. For one month your shop
will be displayed as main baner with direct link to your business website at our main page.', :price=>'500.00')

Advert.create(:name=>'Sub page Baner.', :description=>'Promote your shop on our page. For one month your shop
will be displayed as main baner with direct link to your business website at one of our\'s sub pages.', :price =>'400.00')

Advert.create(:name=>'Highlighted links.', :description=>'If you wont to by sure that our visitors will notice your product
 you can buy this extra service. Price per product per month.', :price=> '20.00')

Package_of_product.create(:name=>'Limited number of product: Ten.', :description=>'With this Package of product you can
submit up to Ten product for one month display on our web site
with price 20 Euro  its les then 2 euro per product.', :price=>'20.00')

Package_of_product.create(:name=>'Limited number of product: Twenty.', :description=>'With this Package of product you
can submit up to Twenty product for one month display on our web site
with price 40 Euro its les then 2 euro per product.', :price=>'40.00')

Package_of_product.create(:name=>'Limited number of product: Thirty.', :description=>'With this Package of product you
can submit up to Thirty product for one month display on our web site
with price 60 Euro its les then 2 euro per product.', :price=>'20.00')

Subscription.create(:name=>'One month Subscription.', :description=>'With our One month Subscription offer you can place
on our website unlimited number of product for period of one month.', :price=>'80.00')

Subscription.create(:name=>'Three months Subscription.', :description=>'With our Three month Subscription offer you can place
on our website unlimited number of product for period of three months.', :price=>'200.00')

Subscription.create(:name=>'Six months Subscription.', :description=>'With our Six months Subscription offer you can place
on our website unlimited number of product for period of six months.', :price=>'550.00')

Subscription.create(:name=>'One year Subscription.', :description=>'With our One year Subscription offer you can place
on our website unlimited number of product for period of one year.', :price=>'1000.00')