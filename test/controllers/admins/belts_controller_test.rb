require "test_helper"

class Admins::BeltsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_belts_index_url
    assert_response :success
  end

  test "should get edit" do
    get admins_belts_edit_url
    assert_response :success
  end

  test "should get show" do
    get admins_belts_show_url
    assert_response :success
  end

  test "should get destroy" do
    get admins_belts_destroy_url
    assert_response :success
  end
end
