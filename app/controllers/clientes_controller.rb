class ClientesController < ApplicationController
  include ApplicationHelper
  
  before_action :set_cliente, only: [:show, :edit, :update, :destroy]
  
  #respond_to :html, :json

  def index
    @clientes = Cliente.where('id < 100')
    respond_to do |format|
      format.html
      format.json
      format.gzip{
        compressed = gzip(@clientes.to_json)
        send_data(
        compressed,
        :filename => "clientes.gzip",
        :type => 'application/gzip',          
        :stream => true,     
        :x_sendfile=>true,
        :url_based_filename => true 
        )               
        flash[:notice] = "The file has been downloaded"
      }
    end
    
  end

  # GET /clientes/1
  # GET /clientes/1.json
  def show
  end

  # GET /clientes/new
  def new
    @cliente = Cliente.new
    
    
    
  end

  # GET /clientes/1/edit
  def edit
  end

  # POST /clientes
  # POST /clientes.json
  def create
    @cliente = Cliente.new(cliente_params)

    respond_to do |format|
      if @cliente.save
        format.html { redirect_to @cliente, notice: 'Cliente was successfully created.' }
        format.json { render :show, status: :created, location: @cliente }
      else
        format.html { render :new }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def persist
    @clientes.each do |clienteX|
      @cliente = clienteX
      @cliente = Cliente.new(cliente_params)
      if @cliente.save
        render :show, status: :created, location: @cliente 
      else
        render json: @cliente.errors, status: :unprocessable_entity 
      end
    end
  end

  
  # PATCH/PUT /clientes/1
  # PATCH/PUT /clientes/1.json
  def update
    respond_to do |format|
      if @cliente.update(cliente_params)
        format.html { redirect_to @cliente, notice: 'Cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @cliente }
      else
        format.html { render :edit }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientes/1
  # DELETE /clientes/1.json
  def destroy
    @cliente.destroy
    respond_to do |format|
      format.html { redirect_to clientes_url, notice: 'Cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_params
      params.require(:cliente).permit(:tipo_pessoa, :endereco, :numero, :bairro, :cidade, :estado, :cep, :email, :ddd_fone, :fone, :ddd_celular, :celular, :status, :data_nascimento, :referc1, :ddd_referc1, :fone_referc1, :nome_razao, :fantasia, :cpf_cnpj, :rg_ie, :alterado, :cod_uf, :cod_mun, :liberado, :limite_credito, :limite_dias, :bloqueios, :planospagamento_id)
    end
end
