module InteractCart
  class ApplicationController < ::ApplicationController
    protect_from_forgery with: :exception

#    def current_cart
#      logger.info "Session #{session[:ic_cart_id]}"
#      if session[:ic_cart_id]
#        @ic_cart ||= Cart.find(session[:ic_cart_id])
#      end
#      if session[:ic_cart_id].nil?
#        @ic_cart = Cart.create!
#        session[:ic_cart_id] = @ic_cart.id
#      end
#      @ic_cart
#    end
  end
end
