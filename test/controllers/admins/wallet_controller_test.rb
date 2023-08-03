require "test_helper"

class Admins::WalletControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_wallet_index_url
    assert_response :success
  end
end
