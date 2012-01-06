#
# UserProductController
# @Version Rev 1
# Date: 04-01-2012
# @author Marcin Weglarz, Student IDx11106832
# @reference Laptop Shop Tutorial 1 - Wesley Gorman
#
#



class UserProductController < ApplicationController
#@author Marcin Weglarz, Student IDx11106832
  def index
    @products = Product.search(params[:search_query])
  end

end

#@reference Laptop Shop Tutorial 1 - Wesley Gorman
 def self.search(search_query)
    if search_query
      find(:all, :conditions => ['name LIKE ?', "%#{search_query}%"])
    else
      find(:all)
    end
  end