module InteractCart
  class Cart < ApplicationRecord
    has_many :cart_items

    def add_item(pid,price,quantity=1,options=[])
      p=InteractCart.product_class.find(pid)
      item = cart_items.where("product_id = ?",pid).first
      if item
          item.quantity=item.quantity + 1
          item.save
      else
          cart_items.create!(product: p,price: price,quantity: quantity,options: options)
      end
      save
    end
    def total
      total=0
      cart_items.all.each do |i|
        total+=i.subtotal
      end
      total
    end
    def delete_item(item_id)
      cart_items.delete(CartItem.find(item_id))
    end
    def update_item_quantity(item_id,n)
      ci=CartItem.find(item_id)
      if n>0 || (ci.quantity>1) 
        ci.quantity=ci.quantity+n
      end
      ci.save
    end
  end
end
