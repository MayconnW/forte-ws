json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :tipo_pessoa, :endereco, :numero, :bairro, :cidade, :estado, :cep, :email, :ddd_fone, :fone, :ddd_celular, :celular, :status, :data_nascimento, :referc1, :ddd_referc1, :fone_referc1, :nome_razao, :fantasia, :cpf_cnpj, :rg_ie, :alterado, :cod_uf, :cod_mun, :liberado, :limite_credito, :limite_dias, :bloqueios, :planospagamento_id
  json.url cliente_url(cliente, format: :json)
end