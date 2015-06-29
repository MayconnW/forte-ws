class CreatePlanospagamentos < ActiveRecord::Migration
  def change
    create_table :planospagamentos do |t|
      t.string :descricao
      t.integer :parcelas
      t.integer :periodo
      t.float :desconto
      t.float :acrescimo
      t.boolean :entrada
      t.boolean :vencimento_fixo

      t.timestamps null: false
    end
  end
end
