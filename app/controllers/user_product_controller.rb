class UserProductController < ApplicationController
  def index
    @products = Product.search(params[:search_query])
  end

end



 def self.search(search_query)
    if search_query
      find(:all, :conditions => ['name LIKE ?', "%#{search_query}%"])
    else
      find(:all)
    end
  end