class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :tipo_pessoa
      t.string :endereco
      t.string :numero
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep
      t.string :email
      t.string :ddd_fone
      t.string :fone
      t.string :ddd_celular
      t.string :celular
      t.integer :status
      t.datetime :data_nascimento
      t.string :referc1
      t.string :ddd_referc1
      t.string :fone_referc1
      t.string :nome_razao
      t.string :fantasia
      t.string :cpf_cnpj
      t.string :rg_ie
      t.boolean :alterado
      t.string :cod_uf
      t.string :cod_mun
      t.integer :liberado
      t.float :limite_credito
      t.integer :limite_dias
      t.text :bloqueios
      t.references :planospagamento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
