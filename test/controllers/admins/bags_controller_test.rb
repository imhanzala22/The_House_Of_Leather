require "test_helper"

class Admins::BagsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_bags_index_url
    assert_response :success
  end
end
