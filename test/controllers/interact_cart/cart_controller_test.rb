require 'test_helper'

module InteractCart
  class CartControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get cart_index_url
      assert_response :success
    end

    test "should get add" do
      get cart_add_url
      assert_response :success
    end

    test "should get remove" do
      get cart_remove_url
      assert_response :success
    end

    test "should get show" do
      get cart_show_url
      assert_response :success
    end

    test "should get update" do
      get cart_update_url
      assert_response :success
    end

  end
end
