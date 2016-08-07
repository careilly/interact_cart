q
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
