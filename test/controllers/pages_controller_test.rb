require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get Home" do
    get :Home
    assert_response :success
  end

  test "should get About" do
    get :About
    assert_response :success
  end

  test "should get FQA" do
    get :FQA
    assert_response :success
  end

end
