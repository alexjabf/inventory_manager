require 'test_helper'

class AlmacenesControllerTest < ActionController::TestCase
  setup do
    @almacene = almacenes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:almacenes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create almacene" do
    assert_difference('Almacene.count') do
      post :create, almacene: { IdAlmacen: @almacene.IdAlmacen, Nombre: @almacene.Nombre, TipoAlmacen: @almacene.TipoAlmacen }
    end

    assert_redirected_to almacene_path(assigns(:almacene))
  end

  test "should show almacene" do
    get :show, id: @almacene
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @almacene
    assert_response :success
  end

  test "should update almacene" do
    patch :update, id: @almacene, almacene: { IdAlmacen: @almacene.IdAlmacen, Nombre: @almacene.Nombre, TipoAlmacen: @almacene.TipoAlmacen }
    assert_redirected_to almacene_path(assigns(:almacene))
  end

  test "should destroy almacene" do
    assert_difference('Almacene.count', -1) do
      delete :destroy, id: @almacene
    end

    assert_redirected_to almacenes_path
  end
end
