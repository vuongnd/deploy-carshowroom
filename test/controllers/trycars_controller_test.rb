require 'test_helper'

class TrycarsControllerTest < ActionController::TestCase
  setup do
    @trycar = trycars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trycars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trycar" do
    assert_difference('Trycar.count') do
      post :create, trycar: { address: @trycar.address, car_id: @trycar.car_id, driver_license: @trycar.driver_license, fee_trial: @trycar.fee_trial, name: @trycar.name, old: @trycar.old, phone: @trycar.phone }
    end

    assert_redirected_to trycar_path(assigns(:trycar))
  end

  test "should show trycar" do
    get :show, id: @trycar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trycar
    assert_response :success
  end

  test "should update trycar" do
    patch :update, id: @trycar, trycar: { address: @trycar.address, car_id: @trycar.car_id, driver_license: @trycar.driver_license, fee_trial: @trycar.fee_trial, name: @trycar.name, old: @trycar.old, phone: @trycar.phone }
    assert_redirected_to trycar_path(assigns(:trycar))
  end

  test "should destroy trycar" do
    assert_difference('Trycar.count', -1) do
      delete :destroy, id: @trycar
    end

    assert_redirected_to trycars_path
  end
end
