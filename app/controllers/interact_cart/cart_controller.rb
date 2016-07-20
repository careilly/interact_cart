require_dependency "interact_cart/application_controller"

module InteractCart
  class CartController < ApplicationController
    def index
    end
    def add
      current_cart.add_item(params[:id],params[:price])
      respond_to do |format|
        format.html { redirect_back fallback_location: main_app.root_path}
        format.js { render}
      end
    end
    def update
      current_cart.update_item_quantity(params[:id],params[:change].to_i)
      respond_to do |format|
        format.html { redirect_back fallback_location: main_app.root_path}
        format.js { render}
      end
    end

    def remove
      current_cart.delete_item(params[:id])
      respond_to do |format|
        format.html { redirect_back fallback_location: main_app.root_path}
        format.js { render}
      end
    end
  end
end
