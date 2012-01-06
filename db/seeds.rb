# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


 #  @Version Rev 3
 #  @Date 04/01/2012
 #  @author Marcin Weglarz, Student IDx11106832
 #  @author Andrzej Poniatowski Student Id x11106707
 #  @reference Laptop_Shop_Tutorial_1 - Wesley Gorman
 #
 #

Product.create(:name =>'MacBook Pro', :category =>'Apple Computing', :description =>'The new, faster MacBook Air. Everyone should have a notebook this advanced. And now everyone can.Both the 11- and 13-inch MacBook Air now feature the latest generation of Intel processors, the Core i5 and i7. With speeds up to 1.8GHz and faster memory, the new MacBook Air gains up to 2.5x the processing performance over the previous generation.1 MacBook Air also features the Intel HD Graphics 3000 processor, which includes an on-chip engine for video encoding and decoding. That means you experience video playback and FaceTime calls that are smoother, more responsive and more true to life.',
               :image_url => '/images/macbook.jpg', :link_url =>'http://store.apple.com/ie/browse/home/shop_mac/family/macbook_air', :price =>' 995.00')
Product.create(:name =>'MacBook Pro', :category =>'Apple Computing', :description =>'The new, faster MacBook Air. Everyone should have a notebook this advanced. And now everyone can.Both the 11- and 13-inch MacBook Air now feature the latest generation of Intel processors, the Core i5 and i7. With speeds up to 1.8GHz and faster memory, the new MacBook Air gains up to 2.5x the processing performance over the previous generation.1 MacBook Air also features the Intel HD Graphics 3000 processor, which includes an on-chip engine for video encoding and decoding. That means you experience video playback and FaceTime calls that are smoother, more responsive and more true to life.',
               :image_url => '/images/macbook.jpg', :link_url =>'http://www.peats.com/cgi-bin/catalog_v2.cgi?id=27913&type=product', :price =>' 995.00')
Product.create(:name =>'MacBook Pro', :category =>'Apple Computing', :description =>'The new, faster MacBook Air. Everyone should have a notebook this advanced. And now everyone can.Both the 11- and 13-inch MacBook Air now feature the latest generation of Intel processors, the Core i5 and i7. With speeds up to 1.8GHz and faster memory, the new MacBook Air gains up to 2.5x the processing performance over the previous generation.1 MacBook Air also features the Intel HD Graphics 3000 processor, which includes an on-chip engine for video encoding and decoding. That means you experience video playback and FaceTime calls that are smoother, more responsive and more true to life.',
               :image_url => '/images/macbook.jpg', :link_url =>'http://www.elara.ie/productdetail.aspx?productcode=ECE2272012', :price =>'1081.17')
Product.create(:name =>'MacBook Pro', :category =>'Apple Computing', :description =>'The new, faster MacBook Air. Everyone should have a notebook this advanced. And now everyone can.Both the 11- and 13-inch MacBook Air now feature the latest generation of Intel processors, the Core i5 and i7. With speeds up to 1.8GHz and faster memory, the new MacBook Air gains up to 2.5x the processing performance over the previous generation.1 MacBook Air also features the Intel HD Graphics 3000 processor, which includes an on-chip engine for video encoding and decoding. That means you experience video playback and FaceTime calls that are smoother, more responsive and more true to life.',
               :image_url => '/images/macbook.jpg', :link_url =>'http://www.argos.ie/static/Product/partNumber/5084007/Trail/searchtext%3EAPPLE.htm', :price =>' 999.00')


Product.create(:name => 'Digital camera', :category => 'Electronics', :description => 'Tink Pink X Hello Kitty DC571
digital camera - five megapixel resolution, 32MB of internal memory, SD slot, 2.4-inch LCD and VGA video of 20fps',
               :image_url => '/images/kitty_camera.jpg', :link_url => 'http://www.engadet.com', :price => 250.00)
Product.create(:name => 'Men Watch', :category => 'Watches', :description => 'USB Hidden Flash Drive Watch - perfect
for carrying your data on secret missions, Japanese quartz movement, black polyurethane strap, huge 8GB capacity, dial
size: 1.1" x 1"(29 x 25mm)', :image_url => 'watch.jpg', :link_url => 'http://www.thinkgeek.com', :price => 45.00)

Service.create(:service_type => 'Advert',:name => 'Main page Banner', :description=> 'Promote your shop on our page. For one month your shop
will be displayed as the main banner with direct link to your business website on our main page.', :price=>'500.00')

Service.create( :service_type => 'Advert',:name=>'Sub page Banner', :description=>'Promote your shop on our page. For one month your shop
will be displayed as the main banner with direct link to your business website at one of our sub pages.', :price =>'400.00')

Service.create( :service_type => 'Advert',:name=>'Highlighted links', :description=>'If you want to be sure that our visitors will notice your product,
 you can buy this extra service. Price per product per month.', :price=> '20.00')

Service.create( :service_type => 'Package of Product',:name=>'Limited number of products: Ten', :description=>'With this Package of products you can
submit up to ten products displayed for one month on our website for the price of 20 Euro. It is less than 2 euro per product.',
:price=>'20.00')

Service.create(:service_type => 'Package of Product',:name=>'Limited number of products: Twenty', :description=>'With this Package of products you
can submit up to twenty products displayed for one month on our website for the price of 40 euro. It is less than 2 euro
per product.', :price=>'40.00')

Service.create(:service_type => 'Package of Product',:name=>'Limited number of products: Thirty', :description=>'With this Package of products you
can submit up to thirty products displayed for one month on our website for the price of 60 euro. It is less than 2 euro
per product.', :price=>'20.00')

Service.create(:service_type => 'Subscription',:name=>'Monthly Subscription', :description=>'With our Monthly Subscription offer you can place an
unlimited number of products on our website for a period of one month.', :price=>'80.00')

Service.create(:service_type => 'Subscription',:name=>'Three-month Subscription', :description=>'With our Three-month Subscription offer you can place
an unlimited number of products on our website for a period of three months.', :price=>'200.00')

Service.create(:service_type => 'Subscription',:name=>'Six-month Subscription', :description=>'With our Six-month Subscription offer you can place
an unlimited number of products on our website for a period of six months.', :price=>'550.00')

Service.create(:service_type => 'Subscription',:name=>'Annual Subscription', :description=>'With our Annual Subscription offer you can place an
unlimited number of products on our website for a period of one year.', :price=>'1000.00')