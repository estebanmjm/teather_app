require 'test_helper'

class TeathersControllerTest < ActionController::TestCase
  setup do
    @teather = teathers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teathers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teather" do
    assert_difference('Teather.count') do
      post :create, teather: { address: @teather.address, description: @teather.description, latitude: @teather.latitude, logo: @teather.logo, longitude: @teather.longitude, manager: @teather.manager, mobile: @teather.mobile, name: @teather.name, phone: @teather.phone, web_site: @teather.web_site }
    end

    assert_redirected_to teather_path(assigns(:teather))
  end

  test "should show teather" do
    get :show, id: @teather
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teather
    assert_response :success
  end

  test "should update teather" do
    patch :update, id: @teather, teather: { address: @teather.address, description: @teather.description, latitude: @teather.latitude, logo: @teather.logo, longitude: @teather.longitude, manager: @teather.manager, mobile: @teather.mobile, name: @teather.name, phone: @teather.phone, web_site: @teather.web_site }
    assert_redirected_to teather_path(assigns(:teather))
  end

  test "should destroy teather" do
    assert_difference('Teather.count', -1) do
      delete :destroy, id: @teather
    end

    assert_redirected_to teathers_path
  end
end
