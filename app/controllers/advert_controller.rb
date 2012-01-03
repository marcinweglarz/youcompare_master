class AdvertController < ApplicationController
  def index
    @adverts =Advert.all
  end

end
