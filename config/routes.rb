InteractCart::Engine.routes.draw do
  root "cart#index"
  get 'cart/index'

  get 'cart/add/:id',action: 'add',controller: :cart,as: 'add_to_cart'

  get 'cart/remove/:id', action: 'remove', controller: :cart, as: 'cart_remove'

  get 'cart/update/:id', action: 'update', controller: :cart, as: 'cart_update'

  get 'checkout',action: 'checkout',controller: :checkout,as: 'checkout'
  post 'checkout',action: 'complete_checkout',controller: :checkout,as: 'complete_checkout'

end
