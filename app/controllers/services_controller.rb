class ServicesController < ApplicationController
  def index
  end

  def ads
    @ads = Ad.all
  end

  def subscriptions
    @subscription = Subscription.all
  end

  def package_of_products
    @packages_of_products = PackageOfProduct.all
  end

end
