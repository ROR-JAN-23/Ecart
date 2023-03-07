class LineItem < ApplicationRecord
belongs_to :product
belongs_to :cart
# belongs_to :order 

 def total_price
  if self.quantity == nil
    self.quantity = 1
    self.quantity * self.product.price
  else
    self.quantity * self.product.price
  end
end

end
