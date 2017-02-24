class CliSistemasController < ApplicationController
  before_action :set_cli_sistema, only: [:show, :edit, :update, :destroy]

  # GET /cli_sistemas
  # GET /cli_sistemas.json
  def index
    @cli_sistemas = CliSistema.all
  end

  # GET /cli_sistemas/1
  # GET /cli_sistemas/1.json
  def show
  end

  # GET /cli_sistemas/new
  def new
    @cli_sistema = CliSistema.new
  end

  # GET /cli_sistemas/1/edit
  def edit
  end

  # POST /cli_sistemas
  # POST /cli_sistemas.json
  def create
    @cli_sistema = CliSistema.new(cli_sistema_params)

    respond_to do |format|
      if @cli_sistema.save
        format.html { redirect_to @cli_sistema, notice: 'Cli sistema was successfully created.' }
        format.json { render :show, status: :created, location: @cli_sistema }
      else
        format.html { render :new }
        format.json { render json: @cli_sistema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cli_sistemas/1
  # PATCH/PUT /cli_sistemas/1.json
  def update
    respond_to do |format|
      if @cli_sistema.update(cli_sistema_params)
        format.html { redirect_to @cli_sistema, notice: 'Cli sistema was successfully updated.' }
        format.json { render :show, status: :ok, location: @cli_sistema }
      else
        format.html { render :edit }
        format.json { render json: @cli_sistema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cli_sistemas/1
  # DELETE /cli_sistemas/1.json
  def destroy
    @cli_sistema.destroy
    respond_to do |format|
      format.html { redirect_to cli_sistemas_url, notice: 'Cli sistema was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cli_sistema
      @cli_sistema = CliSistema.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cli_sistema_params
      params.require(:cli_sistema).permit(:name, :user, :password, :tipo, :domicilio, :RFC, :representante, :CP, :phone, :email, :CURP)
    end
end
