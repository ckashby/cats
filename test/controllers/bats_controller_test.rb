require 'test_helper'

class BatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bats_index_url
    assert_response :success
  end

  test "should get new" do
    get bats_new_url
    assert_response :success
  end

  test "should get create" do
    get bats_create_url
    assert_response :success
  end

end
