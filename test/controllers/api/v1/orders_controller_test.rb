require "test_helper"

class Api::V1::OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_orders_create_url
    assert_response :success
  end
end
