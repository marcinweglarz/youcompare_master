class StoreController < ApplicationController
  def index
    @services = Service.all
    @cart =current_cart


  end
end
