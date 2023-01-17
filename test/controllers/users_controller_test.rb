require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get sign_in" do
    get users_sign_in_url
    assert_response :success
  end

  test "should get sing_up" do
    get users_sing_up_url
    assert_response :success
  end

  test "should get reset_password" do
    get users_reset_password_url
    assert_response :success
  end
end
