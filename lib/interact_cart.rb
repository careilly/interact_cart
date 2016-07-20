require "interact_cart/engine"


module InteractCart
  # Your code goes here...
  #
   mattr_accessor :product_class

   def self.product_class
    @@product_class.constantize
   end
end
