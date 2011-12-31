class StoreController < ApplicationController
  def index
    @services = Service.all


  end
end
