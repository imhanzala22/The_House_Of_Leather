require "test_helper"

class Admins::ShoesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_shoes_index_url
    assert_response :success
  end
end
