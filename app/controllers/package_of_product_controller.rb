class PackageOfProductController < ApplicationController
  def index
    @package_of_product =Package_of_product.all
  end

end
