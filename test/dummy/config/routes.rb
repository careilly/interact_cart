Rails.application.routes.draw do
  get 'welcome/index'

  mount InteractCart::Engine => "/interact_cart"

  root to: "welcome#index"
end
