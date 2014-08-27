require 'test_helper'

class ExistenciaControllerTest < ActionController::TestCase
  setup do
    @existencium = existencia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:existencia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create existencium" do
    assert_difference('Existencium.count') do
      post :create, existencium: { Cantidad: @existencium.Cantidad, Fecha: @existencium.Fecha, FechaCad: @existencium.FechaCad, IdAlmacen: @existencium.IdAlmacen, IdArticulo: @existencium.IdArticulo, IdExistencia: @existencium.IdExistencia }
    end

    assert_redirected_to existencium_path(assigns(:existencium))
  end

  test "should show existencium" do
    get :show, id: @existencium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @existencium
    assert_response :success
  end

  test "should update existencium" do
    patch :update, id: @existencium, existencium: { Cantidad: @existencium.Cantidad, Fecha: @existencium.Fecha, FechaCad: @existencium.FechaCad, IdAlmacen: @existencium.IdAlmacen, IdArticulo: @existencium.IdArticulo, IdExistencia: @existencium.IdExistencia }
    assert_redirected_to existencium_path(assigns(:existencium))
  end

  test "should destroy existencium" do
    assert_difference('Existencium.count', -1) do
      delete :destroy, id: @existencium
    end

    assert_redirected_to existencia_path
  end
end
