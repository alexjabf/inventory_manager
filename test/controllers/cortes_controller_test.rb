require 'test_helper'

class CortesControllerTest < ActionController::TestCase
  setup do
    @corte = cortes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cortes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create corte" do
    assert_difference('Corte.count') do
      post :create, corte: { Caducidad: @corte.Caducidad, Consecutivo: @corte.Consecutivo, Estatus: @corte.Estatus, Etiqueta: @corte.Etiqueta, IDcorte: @corte.IDcorte, IDlote: @corte.IDlote, Inventariado: @corte.Inventariado, agregado: @corte.agregado, eliminado: @corte.eliminado, idArticulo: @corte.idArticulo, peso: @corte.peso, piezas: @corte.piezas, reempaque: @corte.reempaque, vendido: @corte.vendido }
    end

    assert_redirected_to corte_path(assigns(:corte))
  end

  test "should show corte" do
    get :show, id: @corte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @corte
    assert_response :success
  end

  test "should update corte" do
    patch :update, id: @corte, corte: { Caducidad: @corte.Caducidad, Consecutivo: @corte.Consecutivo, Estatus: @corte.Estatus, Etiqueta: @corte.Etiqueta, IDcorte: @corte.IDcorte, IDlote: @corte.IDlote, Inventariado: @corte.Inventariado, agregado: @corte.agregado, eliminado: @corte.eliminado, idArticulo: @corte.idArticulo, peso: @corte.peso, piezas: @corte.piezas, reempaque: @corte.reempaque, vendido: @corte.vendido }
    assert_redirected_to corte_path(assigns(:corte))
  end

  test "should destroy corte" do
    assert_difference('Corte.count', -1) do
      delete :destroy, id: @corte
    end

    assert_redirected_to cortes_path
  end
end
