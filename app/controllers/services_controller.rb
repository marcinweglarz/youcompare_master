class ServicesController < ApplicationController
  def index
    @ads = Ad.all
    @packages_of_products = PackageOfProduct.all
    @subscription = Subscription.all
  end

  def services
  end

end
