class RecorridosController < ApplicationController
  load_and_authorize_resource
  before_action :set_recorrido, only: [:show, :edit, :update, :destroy]

  # GET /recorridos
  # GET /recorridos.json
  def index
    @recorridos = Recorrido.all
  end

  # GET /recorridos/1
  # GET /recorridos/1.json
  def show
  end

  # GET /recorridos/new
  def new
    @recorrido = Recorrido.new
  end

  # GET /recorridos/1/edit
  def edit
  end

  # POST /recorridos
  # POST /recorridos.json
  def create
    @recorrido = Recorrido.new(recorrido_params)

    respond_to do |format|
      if @recorrido.save
        format.html { redirect_to @recorrido, notice: 'Recorrido was successfully created.' }
        format.json { render :show, status: :created, location: @recorrido }
      else
        format.html { render :new }
        format.json { render json: @recorrido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recorridos/1
  # PATCH/PUT /recorridos/1.json
  def update
    respond_to do |format|
      if @recorrido.update(recorrido_params)
        format.html { redirect_to @recorrido, notice: 'Recorrido was successfully updated.' }
        format.json { render :show, status: :ok, location: @recorrido }
      else
        format.html { render :edit }
        format.json { render json: @recorrido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recorridos/1
  # DELETE /recorridos/1.json
  def destroy
    @recorrido.destroy
    respond_to do |format|
      format.html { redirect_to recorridos_url, notice: 'Recorrido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recorrido
      @recorrido = Recorrido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recorrido_params
      params.require(:recorrido).permit(:ruta_name, :ruta_description, :ruta_recorrido)
    end
end
