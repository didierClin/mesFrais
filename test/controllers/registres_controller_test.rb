require 'test_helper'

class RegistresControllerTest < ActionController::TestCase
  setup do
    @registre = registres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registre" do
    assert_difference('Registre.count') do
      post :create, registre: { date: @registre.date, destination: @registre.destination, distance: @registre.distance, motif: @registre.motif, origine: @registre.origine, user_id: @registre.user_id }
    end

    assert_redirected_to registre_path(assigns(:registre))
  end

  test "should show registre" do
    get :show, id: @registre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registre
    assert_response :success
  end

  test "should update registre" do
    patch :update, id: @registre, registre: { date: @registre.date, destination: @registre.destination, distance: @registre.distance, motif: @registre.motif, origine: @registre.origine, user_id: @registre.user_id }
    assert_redirected_to registre_path(assigns(:registre))
  end

  test "should destroy registre" do
    assert_difference('Registre.count', -1) do
      delete :destroy, id: @registre
    end

    assert_redirected_to registres_path
  end
end
