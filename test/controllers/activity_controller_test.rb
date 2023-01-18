require "test_helper"

class ActivityControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get activity_index_url
    assert_response :success
  end

  test "should get create" do
    get activity_create_url
    assert_response :success
  end

  test "should get update" do
    get activity_update_url
    assert_response :success
  end

  test "should get delete" do
    get activity_delete_url
    assert_response :success
  end
end
