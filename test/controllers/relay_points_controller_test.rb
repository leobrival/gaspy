require "test_helper"

class RelayPointsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get relay_points_index_url
    assert_response :success
  end

  test "should get new" do
    get relay_points_new_url
    assert_response :success
  end

  test "should get create" do
    get relay_points_create_url
    assert_response :success
  end

  test "should get show" do
    get relay_points_show_url
    assert_response :success
  end

  test "should get edit" do
    get relay_points_edit_url
    assert_response :success
  end

  test "should get update" do
    get relay_points_update_url
    assert_response :success
  end

  test "should get destroy" do
    get relay_points_destroy_url
    assert_response :success
  end
end
