require 'test_helper'

class TypeofcarsControllerTest < ActionController::TestCase
  setup do
    @typeofcar = typeofcars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:typeofcars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create typeofcar" do
    assert_difference('Typeofcar.count') do
      post :create, typeofcar: { company_id: @typeofcar.company_id, name: @typeofcar.name }
    end

    assert_redirected_to typeofcar_path(assigns(:typeofcar))
  end

  test "should show typeofcar" do
    get :show, id: @typeofcar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @typeofcar
    assert_response :success
  end

  test "should update typeofcar" do
    patch :update, id: @typeofcar, typeofcar: { company_id: @typeofcar.company_id, name: @typeofcar.name }
    assert_redirected_to typeofcar_path(assigns(:typeofcar))
  end

  test "should destroy typeofcar" do
    assert_difference('Typeofcar.count', -1) do
      delete :destroy, id: @typeofcar
    end

    assert_redirected_to typeofcars_path
  end
end
