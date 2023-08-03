require "test_helper"

class Admins::BeltControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_belt_index_url
    assert_response :success
  end
end
