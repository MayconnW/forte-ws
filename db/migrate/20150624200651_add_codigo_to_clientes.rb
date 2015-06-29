class AddCodigoToClientes < ActiveRecord::Migration
  def change
    add_column :clientes, :codigo, :string
  end
end
