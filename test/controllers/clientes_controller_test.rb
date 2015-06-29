require 'test_helper'

class ClientesControllerTest < ActionController::TestCase
  setup do
    @cliente = clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente" do
    assert_difference('Cliente.count') do
      post :create, cliente: { alterado: @cliente.alterado, bairro: @cliente.bairro, bloqueios: @cliente.bloqueios, celular: @cliente.celular, cep: @cliente.cep, cidade: @cliente.cidade, cod_mun: @cliente.cod_mun, cod_uf: @cliente.cod_uf, cpf_cnpj: @cliente.cpf_cnpj, data_nascimento: @cliente.data_nascimento, ddd_celular: @cliente.ddd_celular, ddd_fone: @cliente.ddd_fone, ddd_referc1: @cliente.ddd_referc1, email: @cliente.email, endereco: @cliente.endereco, estado: @cliente.estado, fantasia: @cliente.fantasia, fone: @cliente.fone, fone_referc1: @cliente.fone_referc1, liberado: @cliente.liberado, limite_credito: @cliente.limite_credito, limite_dias: @cliente.limite_dias, nome_razao: @cliente.nome_razao, numero: @cliente.numero, planospagamento_id: @cliente.planospagamento_id, referc1: @cliente.referc1, rg_ie: @cliente.rg_ie, status: @cliente.status, tipo_pessoa: @cliente.tipo_pessoa }
    end

    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should show cliente" do
    get :show, id: @cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente
    assert_response :success
  end

  test "should update cliente" do
    patch :update, id: @cliente, cliente: { alterado: @cliente.alterado, bairro: @cliente.bairro, bloqueios: @cliente.bloqueios, celular: @cliente.celular, cep: @cliente.cep, cidade: @cliente.cidade, cod_mun: @cliente.cod_mun, cod_uf: @cliente.cod_uf, cpf_cnpj: @cliente.cpf_cnpj, data_nascimento: @cliente.data_nascimento, ddd_celular: @cliente.ddd_celular, ddd_fone: @cliente.ddd_fone, ddd_referc1: @cliente.ddd_referc1, email: @cliente.email, endereco: @cliente.endereco, estado: @cliente.estado, fantasia: @cliente.fantasia, fone: @cliente.fone, fone_referc1: @cliente.fone_referc1, liberado: @cliente.liberado, limite_credito: @cliente.limite_credito, limite_dias: @cliente.limite_dias, nome_razao: @cliente.nome_razao, numero: @cliente.numero, planospagamento_id: @cliente.planospagamento_id, referc1: @cliente.referc1, rg_ie: @cliente.rg_ie, status: @cliente.status, tipo_pessoa: @cliente.tipo_pessoa }
    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should destroy cliente" do
    assert_difference('Cliente.count', -1) do
      delete :destroy, id: @cliente
    end

    assert_redirected_to clientes_path
  end
end
