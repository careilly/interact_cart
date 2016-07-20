module InteractCart
  module CartHelper
    def ic_add_to_cart(product_id,product_price)
      capture_haml do
        haml_tag :a,"Add to cart",href: interact_cart.add_to_cart_path(product_id,price: product_price),class: "button"
      end
    end
    def ic_display_cart
      render partial: "interact_cart/cart/ic_display_cart", locals: { cart: @ic_cart }
    end
    def  ic_display_cart_item(i)
      render partial: "interact_cart/cart/ic_display_cart_item", locals: { item: i }
    end
    def ic_display_cart_summary
      render partial: "interact_cart/cart/ic_display_cart_summary", locals: { cart: @ic_cart }
    end
  end
end
