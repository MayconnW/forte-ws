# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150624200651) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string   "tipo_pessoa"
    t.string   "endereco"
    t.string   "numero"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "cep"
    t.string   "email"
    t.string   "ddd_fone"
    t.string   "fone"
    t.string   "ddd_celular"
    t.string   "celular"
    t.integer  "status"
    t.datetime "data_nascimento"
    t.string   "referc1"
    t.string   "ddd_referc1"
    t.string   "fone_referc1"
    t.string   "nome_razao"
    t.string   "fantasia"
    t.string   "cpf_cnpj"
    t.string   "rg_ie"
    t.boolean  "alterado"
    t.string   "cod_uf"
    t.string   "cod_mun"
    t.integer  "liberado"
    t.float    "limite_credito"
    t.integer  "limite_dias"
    t.text     "bloqueios"
    t.integer  "planospagamento_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "codigo"
  end

  add_index "clientes", ["planospagamento_id"], name: "index_clientes_on_planospagamento_id", using: :btree

  create_table "planospagamentos", force: :cascade do |t|
    t.string   "descricao"
    t.integer  "parcelas"
    t.integer  "periodo"
    t.float    "desconto"
    t.float    "acrescimo"
    t.boolean  "entrada"
    t.boolean  "vencimento_fixo"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.string   "codigo"
    t.string   "imei"
    t.string   "descricao"
    t.string   "unidade"
    t.text     "obs"
    t.float    "preco"
    t.string   "codbarras"
    t.boolean  "fraciona"
    t.integer  "ctrl_preco"
    t.integer  "ctrl_estoque"
    t.float    "quantidade"
    t.float    "max_desc"
    t.float    "max_acresc"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "clientes", "planospagamentos"
end
