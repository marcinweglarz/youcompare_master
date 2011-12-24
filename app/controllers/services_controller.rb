class ServicesController < ApplicationController
  def services
  end

  def index
    @ads = Ad.all
    @packages_of_products = PackageOfProduct.all
    @subscription = Subscription.all

  end
end
