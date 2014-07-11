require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get first_set" do
    get :first_set
    assert_response :success
  end

  test "should get monitor" do
    get :monitor
    assert_response :success
  end

  test "should get network" do
    get :network
    assert_response :success
  end

  test "should get report" do
    get :report
    assert_response :success
  end

  test "should get settings" do
    get :settings
    assert_response :success
  end

  test "should get support" do
    get :support
    assert_response :success
  end

end
