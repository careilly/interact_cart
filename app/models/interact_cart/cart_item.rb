module InteractCart
  class CartItem < ApplicationRecord
    belongs_to :cart
    belongs_to :product, class_name: InteractCart.product_class
    serialize :options
    

    def subtotal
      quantity*price
    end
  end
end
