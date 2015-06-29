# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

3000.times do |i|
  Cliente.create(codigo:i.to_s.rjust(5, "0"), alterado: true, bairro: "teste#{i}", celular: "9901-#{i}", cep: "86430-000", cidade: "Cidade #{i}", cpf_cnpj: "12345678#{i}",
                 data_nascimento: "01-01-1990", ddd_celular: "43", ddd_fone: "41", email: "teste#{i}@gmail.com", endereco: "Rua dos testes#{i}",
                 estado: "PR", fantasia: "Fantasia Teste #{i}", fone: "3534-#{i}", nome_razao: "Nome Razão Teste #{i}", numero: "#{i}",
                 rg_ie: "123456#{i}", status: "A", tipo_pessoa: "F", limite_credito: i, limite_dias: i, planospagamento_id: 1)
end

1500.times do |i|
  p = (100.0+i)/2
  Produto.create(codigo:i.to_s.rjust(5, "0"), imei:"354988056981473", descricao:"Produto teste #{i}", unidade:"UN",
                 obs:"Produto cadastrado para teste no primeiro seed do Rails, Linha: #{i}", 
                 preco:p, codbarras:i.to_s.rjust(18, "0"), fraciona:true, ctrl_preco:0, ctrl_estoque:0, quantidade:i,
                 max_desc:10, max_acresc:10)
                 
  Produto.create(codigo:i.to_s.rjust(5, "0"), imei:"352565063081604", descricao:"Produto teste #{i}", unidade:"UN",
                 obs:"Produto cadastrado para teste no segundo seed do Rails, Linha: #{i}", 
                 preco:p, codbarras:i.to_s.rjust(18, "0"), fraciona:true, ctrl_preco:0, ctrl_estoque:0, quantidade:i,
                 max_desc:10, max_acresc:10)
end