require 'test_helper'

class SamplesControllerTest < ActionController::TestCase
  test "should get bart" do
    get :bart
    assert_response :success
  end

  test "should get anc" do
    get :anc
    assert_response :success
  end

  test "should get registration" do
    get :registration
    assert_response :success
  end

  test "should get opd" do
    get :opd
    assert_response :success
  end

  test "should get hcsa" do
    get :hcsa
    assert_response :success
  end

  test "should get dashboard" do
    get :dashboard
    assert_response :success
  end

end
