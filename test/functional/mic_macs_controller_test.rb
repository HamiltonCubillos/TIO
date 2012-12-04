require 'test_helper'

class MicMacsControllerTest < ActionController::TestCase
  setup do
    @mic_mac = mic_macs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mic_macs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mic_mac" do
    assert_difference('MicMac.count') do
      post :create, mic_mac: { numvariables: @mic_mac.numvariables }
    end

    assert_redirected_to mic_mac_path(assigns(:mic_mac))
  end

  test "should show mic_mac" do
    get :show, id: @mic_mac
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mic_mac
    assert_response :success
  end

  test "should update mic_mac" do
    put :update, id: @mic_mac, mic_mac: { numvariables: @mic_mac.numvariables }
    assert_redirected_to mic_mac_path(assigns(:mic_mac))
  end

  test "should destroy mic_mac" do
    assert_difference('MicMac.count', -1) do
      delete :destroy, id: @mic_mac
    end

    assert_redirected_to mic_macs_path
  end
end
