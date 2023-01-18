require "test_helper"

class ExecutorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get executor_index_url
    assert_response :success
  end

  test "should get create" do
    get executor_create_url
    assert_response :success
  end

  test "should get update" do
    get executor_update_url
    assert_response :success
  end
end
