require 'test_helper'

class FanControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fan_index_url
    assert_response :success
  end

  test "should get edit" do
    get fan_edit_url
    assert_response :success
  end

  test "should get new" do
    get fan_new_url
    assert_response :success
  end

  test "should get create" do
    get fan_create_url
    assert_response :success
  end

  test "should get destroy" do
    get fan_destroy_url
    assert_response :success
  end

end
