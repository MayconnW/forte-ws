json.array!(@produtos) do |produto|
  json.extract! produto, :id, :codigo, :imei, :descricao, :unidade, :obs, :preco, :codbarras, :fraciona, :ctrl_preco, :ctrl_estoque, :quantidade, :max_desc, :max_acresc
  json.url produto_url(produto, format: :json)
end
