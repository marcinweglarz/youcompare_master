#
# StoreController
# Date: 04-01-2012
# @Author Andrzej Poniatowski x11106077
# @reference Laptop Shop Tutorial - Wesley Gorman
#
#



class StoreController < ApplicationController
 # @ Andrzej Poniatowski student id x11106077
  def index
    @services =Service.all
    @cart = current_cart

  end
  end


