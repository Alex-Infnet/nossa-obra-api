require "test_helper"

class ClientsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clients_index_url
    assert_response :success
  end

  test "should get create:post" do
    get clients_create:post_url
    assert_response :success
  end

  test "should get update" do
    get clients_update_url
    assert_response :success
  end

  test "should get delete" do
    get clients_delete_url
    assert_response :success
  end
end
