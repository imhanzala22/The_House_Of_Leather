require "test_helper"

class Admins::JacketsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_jackets_index_url
    assert_response :success
  end
end
