require "test_helper"

class Admins::LeatherBagControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_leather_bag_index_url
    assert_response :success
  end
end
