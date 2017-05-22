require 'test_helper'

class RecorridosControllerTest < ActionController::TestCase
  setup do
    @recorrido = recorridos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recorridos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recorrido" do
    assert_difference('Recorrido.count') do
      post :create, recorrido: { ruta_description: @recorrido.ruta_description, ruta_name: @recorrido.ruta_name, ruta_recorrido: @recorrido.ruta_recorrido }
    end

    assert_redirected_to recorrido_path(assigns(:recorrido))
  end

  test "should show recorrido" do
    get :show, id: @recorrido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recorrido
    assert_response :success
  end

  test "should update recorrido" do
    patch :update, id: @recorrido, recorrido: { ruta_description: @recorrido.ruta_description, ruta_name: @recorrido.ruta_name, ruta_recorrido: @recorrido.ruta_recorrido }
    assert_redirected_to recorrido_path(assigns(:recorrido))
  end

  test "should destroy recorrido" do
    assert_difference('Recorrido.count', -1) do
      delete :destroy, id: @recorrido
    end

    assert_redirected_to recorridos_path
  end
end
