require 'test_helper'

class ReportsControllerTest < ActionController::TestCase
  test "should get generate" do
    get :generate
    assert_response :success
  end

  test "should get display" do
    get :display
    assert_response :success
  end

end
