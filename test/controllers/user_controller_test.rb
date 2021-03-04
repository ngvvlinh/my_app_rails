require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get user_login_url
    assert_response :success
  end

  test "should get process_login" do
    get user_process_login_url
    assert_response :success
  end

  test "should get logout" do
    get user_logout_url
    assert_response :success
  end

  test "should get my_account" do
    get user_my_account_url
    assert_response :success
  end
end
