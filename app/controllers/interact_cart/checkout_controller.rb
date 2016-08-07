require_dependency "interact_cart/application_controller"

module InteractCart
  class CheckoutController < ApplicationController
    def checkout
      Rails.configuration.stripe = {
        :publishable_key => "pk_test_TVaJyBmDPx3dDaqwqAJTqCBD",
        :secret_key      => "sk_test_yz9DZKVfwqHQnIeOGOmL6bL0"
      }

      Stripe.api_key = Rails.configuration.stripe[:secret_key]
    end

    def complete_checkout
      token = params[:stripeToken]
      begin
        order=Order.new()
        order.cart=@ic_cart
        InteractCart.order_params.each do |p|
          order[p]=params[p]
        end
        order.save
        charge = Stripe::Charge.create(
          :amount      => (@ic_cart.total*100).to_i,
          :description => 'Test charge',
          :source => token,
          :currency    => 'eur',
          :metadata => {"order_id" => order.orderid}
        )
        @ic_cart_checkout_message="Thank you for your order"
        order.status="Paid"
        order.stripe_token=token
        order.save
        order.order_completed
      rescue Stripe::CardError => e
        @ic_cart_checkout_message="Card declined. Please check your details or contact your issuing bank."
      end
    end
  end
end
