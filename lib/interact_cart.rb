require "interact_cart/engine"
require "interact_cart/acts_as_order_for_interact_cart"


module InteractCart
  # Your code goes here...
  #
   mattr_accessor :product_class
   mattr_accessor :layout

   def self.product_class
    @@product_class.constantize
   end
end

