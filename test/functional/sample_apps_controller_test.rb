require 'test_helper'

class SampleAppsControllerTest < ActionController::TestCase
  test "should get dashboard" do
    get :dashboard
    assert_response :success
  end

  test "should get opd" do
    get :opd
    assert_response :success
  end

  test "should get cvs" do
    get :cvs
    assert_response :success
  end

  test "should get ipd" do
    get :ipd
    assert_response :success
  end

  test "should get anc" do
    get :anc
    assert_response :success
  end

end
