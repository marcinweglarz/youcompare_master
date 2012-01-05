class UserProductController < ApplicationController
  def index
    @products = Product.all
  end

end
