require 'test_helper'

module InteractCart
  class CartTest < ActiveSupport::TestCase
    def setup_cart_test
       @cart=Cart.new
       @cart.save
       @p=products(:one)

       @cart.add_item(@p.id,@p.price)
    end
    def setup_cart_test_two_x_one
       @cart=Cart.new
       @cart.save
       @p=products(:one)

       @cart.add_item(@p.id,@p.price,2)
    end
    def setup_cart_test_two
       @cart=Cart.new
       @cart.save
       @p=products(:one)

       @cart.add_item(@p.id,@p.price)
       @p2=products(:two)

       @cart.add_item(@p2.id,@p2.price)
    end

    test "Add an item to cart - length" do
      setup_cart_test
      assert_equal(1,@cart.cart_items.length)
    end
    test "Add an item to cart - product id" do
      setup_cart_test
      assert_equal(@p.id,@cart.cart_items.first.product_id)
    end
    test "Add an item to cart - quantity" do
      setup_cart_test
      assert_equal(1,@cart.cart_items.first.quantity)
    end
    test "Add an item to cart - options" do
      setup_cart_test
      assert_equal([],@cart.cart_items.first.options)
    end
    test "Check cart_item sub total" do
      setup_cart_test
      assert_equal(9.99,@cart.cart_items.first.subtotal)
    end
    test "Check total" do
      setup_cart_test
      assert_equal(9.99,@cart.total)
    end
    test "Check total two" do
      setup_cart_test_two
      assert_equal(9.99*2,@cart.total)
    end
    test "Delete an item from  cart - length" do
      setup_cart_test
      @cart.delete_item(@cart.cart_items.first.id)
      assert_equal(0,@cart.cart_items.length)
    end
    test "Delete an item from  cart - total" do
      setup_cart_test
      @cart.delete_item(@cart.cart_items.first.id)
      assert_equal(0,@cart.total)
    end
    test "Delete an item from  cart with two items - total" do
      setup_cart_test_two
      @cart.delete_item(@cart.cart_items.first.id)
      assert_equal(9.99,@cart.total)
    end
    test "Delete an item from  cart with two items - length" do
      setup_cart_test_two
      @cart.delete_item(@cart.cart_items.first.id)
      assert_equal(1,@cart.cart_items.length)
    end
  end
end
