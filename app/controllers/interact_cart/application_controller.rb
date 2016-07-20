module InteractCart
  class ApplicationController < ::ApplicationController
    protect_from_forgery with: :exception
    layout InteractCart.layout
  end
end
