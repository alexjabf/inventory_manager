require 'test_helper'

class LotecanalsControllerTest < ActionController::TestCase
  setup do
    @lotecanal = lotecanals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lotecanals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lotecanal" do
    assert_difference('Lotecanal.count') do
      post :create, lotecanal: { IDfolio: @lotecanal.IDfolio, IDlote: @lotecanal.IDlote, aserrin: @lotecanal.aserrin, cierrefecha: @lotecanal.cierrefecha, consecutivo: @lotecanal.consecutivo, costofinal: @lotecanal.costofinal, costoinicial: @lotecanal.costoinicial, costosIndirectos: @lotecanal.costosIndirectos, descripcion: @lotecanal.descripcion, estado: @lotecanal.estado, fecha: @lotecanal.fecha, hueso: @lotecanal.hueso, manoObra: @lotecanal.manoObra, numfactura: @lotecanal.numfactura, pesofinal: @lotecanal.pesofinal, pesoinicial: @lotecanal.pesoinicial, sebo: @lotecanal.sebo }
    end

    assert_redirected_to lotecanal_path(assigns(:lotecanal))
  end

  test "should show lotecanal" do
    get :show, id: @lotecanal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lotecanal
    assert_response :success
  end

  test "should update lotecanal" do
    patch :update, id: @lotecanal, lotecanal: { IDfolio: @lotecanal.IDfolio, IDlote: @lotecanal.IDlote, aserrin: @lotecanal.aserrin, cierrefecha: @lotecanal.cierrefecha, consecutivo: @lotecanal.consecutivo, costofinal: @lotecanal.costofinal, costoinicial: @lotecanal.costoinicial, costosIndirectos: @lotecanal.costosIndirectos, descripcion: @lotecanal.descripcion, estado: @lotecanal.estado, fecha: @lotecanal.fecha, hueso: @lotecanal.hueso, manoObra: @lotecanal.manoObra, numfactura: @lotecanal.numfactura, pesofinal: @lotecanal.pesofinal, pesoinicial: @lotecanal.pesoinicial, sebo: @lotecanal.sebo }
    assert_redirected_to lotecanal_path(assigns(:lotecanal))
  end

  test "should destroy lotecanal" do
    assert_difference('Lotecanal.count', -1) do
      delete :destroy, id: @lotecanal
    end

    assert_redirected_to lotecanals_path
  end
end
