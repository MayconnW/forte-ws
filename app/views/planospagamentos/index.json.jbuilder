json.array!(@planospagamentos) do |planospagamento|
  json.extract! planospagamento, :id, :descricao, :parcelas, :periodo, :desconto, :acrescimo, :entrada, :vencimento_fixo
  json.url planospagamento_url(planospagamento, format: :json)
end
