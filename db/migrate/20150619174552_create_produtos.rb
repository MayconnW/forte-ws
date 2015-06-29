class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :codigo
      t.string :imei
      t.string :descricao
      t.string :unidade
      t.text :obs
      t.float :preco
      t.string :codbarras
      t.boolean :fraciona
      t.integer :ctrl_preco
      t.integer :ctrl_estoque
      t.float :quantidade
      t.float :max_desc
      t.float :max_acresc

      t.timestamps null: false
    end
  end
end
