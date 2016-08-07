require 'haml-rails'
require 'stripe'
require 'foundation-rails'
require 'foundation-icons-sass-rails'
require 'jquery-rails'

module InteractCart
  class Engine < ::Rails::Engine
    isolate_namespace InteractCart
  end
  ActionController::Base.class_exec do
     before_action :current_cart
     def current_cart
        logger.info "Session #{session[:ic_cart_id]}"
        if session[:ic_cart_id]
          @ic_cart ||= Cart.find(session[:ic_cart_id])
        end
        if session[:ic_cart_id].nil?
          @ic_cart = Cart.create!
          session[:ic_cart_id] = @ic_cart.id
        end
        @ic_cart
      end
   end
end
