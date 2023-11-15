class CoordenadorsController < ApplicationController
  before_action :set_coordenador, only: %i[ show edit update destroy ]

  # GET /coordenadors or /coordenadors.json
  def index
    @coordenadors = Coordenador.all
  end

  # GET /coordenadors/1 or /coordenadors/1.json
  def show
  end

  # GET /coordenadors/new
  def new
    @coordenador = Coordenador.new
  end

  # GET /coordenadors/1/edit
  def edit
  end

  # POST /coordenadors or /coordenadors.json
  def create
    @coordenador = Coordenador.new(coordenador_params)

    respond_to do |format|
      if @coordenador.save
        format.html { redirect_to coordenador_url(@coordenador), notice: "Coordenador was successfully created." }
        format.json { render :show, status: :created, location: @coordenador }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coordenador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coordenadors/1 or /coordenadors/1.json
  def update
    respond_to do |format|
      if @coordenador.update(coordenador_params)
        format.html { redirect_to coordenador_url(@coordenador), notice: "Coordenador was successfully updated." }
        format.json { render :show, status: :ok, location: @coordenador }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coordenador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coordenadors/1 or /coordenadors/1.json
  def destroy
    @coordenador.destroy

    respond_to do |format|
      format.html { redirect_to coordenadors_url, notice: "Coordenador was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coordenador
      @coordenador = Coordenador.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coordenador_params
      params.fetch(:coordenador, {})
    end
end
