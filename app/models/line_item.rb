class LineItem < ActiveRecord::Base
  belongs_to :service
  belongs_to :cart

end
