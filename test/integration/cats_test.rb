require 'test_helper'

class CatsTest < ActionDispatch::IntegrationTest
  # test "invalid cats should not be created" do
  #   get new_cat_path
  #   assert_response "success"
  # end
  test "Invalid cats should not be create" do
  	get signup_path
  	assert_no_difference 'Cat.count' do
    post cats_path, params: { cat: { name:  "",
                                     gender: "female" } }
    end
  end

  test "Invalid cats should not be created" do
    get signup_path
    assert_no_difference 'Cat.count' do
    post cats_path, params: { cat: { name:  "Fifi",
                                     gender: "" } }
    end
  end

  test "Valid cats should be created" do
    get signup_path
    assert_difference 'Cat.count', 1 do
    post cats_path, params: { cat: { name:  "Fifi",
                                     gender: "female" } }
    follow_redirect!
    assert_template 'cats/index'
    assert_not flash.empty?
    end
  end

end
