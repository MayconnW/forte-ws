require 'test_helper'

class PlanospagamentosControllerTest < ActionController::TestCase
  setup do
    @planospagamento = planospagamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planospagamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create planospagamento" do
    assert_difference('Planospagamento.count') do
      post :create, planospagamento: { acrescimo: @planospagamento.acrescimo, desconto: @planospagamento.desconto, descricao: @planospagamento.descricao, entrada: @planospagamento.entrada, parcelas: @planospagamento.parcelas, periodo: @planospagamento.periodo, vencimento_fixo: @planospagamento.vencimento_fixo }
    end

    assert_redirected_to planospagamento_path(assigns(:planospagamento))
  end

  test "should show planospagamento" do
    get :show, id: @planospagamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @planospagamento
    assert_response :success
  end

  test "should update planospagamento" do
    patch :update, id: @planospagamento, planospagamento: { acrescimo: @planospagamento.acrescimo, desconto: @planospagamento.desconto, descricao: @planospagamento.descricao, entrada: @planospagamento.entrada, parcelas: @planospagamento.parcelas, periodo: @planospagamento.periodo, vencimento_fixo: @planospagamento.vencimento_fixo }
    assert_redirected_to planospagamento_path(assigns(:planospagamento))
  end

  test "should destroy planospagamento" do
    assert_difference('Planospagamento.count', -1) do
      delete :destroy, id: @planospagamento
    end

    assert_redirected_to planospagamentos_path
  end
end
