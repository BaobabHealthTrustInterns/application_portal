require 'test_helper'

class SampleControllerTest < ActionController::TestCase
  test "should get opd" do
    get :opd
    assert_response :success
  end

  test "should get anc" do
    get :anc
    assert_response :success
  end

  test "should get bart" do
    get :bart
    assert_response :success
  end

  test "should get dashboard" do
    get :dashboard
    assert_response :success
  end

  test "should get chronic_care" do
    get :chronic_care
    assert_response :success
  end

  test "should get ipd" do
    get :ipd
    assert_response :success
  end

  test "should get bart2" do
    get :bart2
    assert_response :success
  end

  test "should get radiology" do
    get :radiology
    assert_response :success
  end

  test "should get dde2" do
    get :dde2
    assert_response :success
  end

  test "should get hcsa" do
    get :hcsa
    assert_response :success
  end

end
