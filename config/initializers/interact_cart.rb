InteractCart.product_class="Product"
InteractCart.layout="application"
InteractCart.order_params=[:name,:address,:email,:phone]
InteractCart.order_receiver_email=["careilly@mac.com"]
InteractCart.order_subject="Order from dummy system"

Rails.configuration.stripe = {
  :publishable_key => "pk_test_TVaJyBmDPx3dDaqwqAJTqCBD",
  :secret_key      => "sk_test_yz9DZKVfwqHQnIeOGOmL6bL0"
}

