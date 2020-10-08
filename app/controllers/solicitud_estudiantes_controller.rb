class SolicitudEstudiantesController < ApplicationController
  before_action :set_solicitud_estudiante_create, only: [:show, :edit, :update ]
  before_action :set_solicitud_estudiante_destroy, only: [:destroy, :get]

  # GET /solicitud_estudiantes
  # GET /solicitud_estudiantes.json
  def index
    @solicitud_estudiantes = SolicitudEstudiante.all
  end

  # GET /solicitud_estudiantes/1
  # GET /solicitud_estudiantes/1.json
  def show
  end

  # GET /solicitud_estudiantes/new
  def new
    @solicitud_estudiante = SolicitudEstudiante.new
  end

  # GET /solicitud_estudiantes/1/edit
  def edit
  end

  # POST /solicitud_estudiantes
  # POST /solicitud_estudiantes.json
  def create
    @solicitud_estudiante = SolicitudEstudiante.new(solicitud_estudiante_params)

    respond_to do |format|
      if @solicitud_estudiante.save
        format.html { redirect_to @solicitud_estudiante, notice: 'Solicitud estudiante ha sido creada.' }
        format.json { render :show, status: :created, location: @solicitud_estudiante }
      else
        format.html { render :new }
        format.json { render json: @solicitud_estudiante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicitud_estudiantes/1
  # PATCH/PUT /solicitud_estudiantes/1.json
  def update
    respond_to do |format|
      if @solicitud_estudiante.update(solicitud_estudiante_params)
        format.html { redirect_to @solicitud_estudiante, notice: 'Solicitud estudiante ha sido actualizada.' }
        format.json { render :show, status: :ok, location: @solicitud_estudiante }
      else
        format.html { render :edit }
        format.json { render json: @solicitud_estudiante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitud_estudiantes/1
  # DELETE /solicitud_estudiantes/1.json
  def destroy
    @solicitud_estudiante = SolicitudEstudiante.find_by(id_solicitud: params[:id_solicitud])
    if @solicitud_estudiante.present?
      @solicitud_estudiante.destroy
    end
    respond_to do |format|
      format.html { redirect_to solicitud_estudiantes_url, notice: 'Solicitud estudiante ha sido eliminada.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitud_estudiante_create
        @solicitud_estudiante = SolicitudEstudiante.find(params[:id])
    end

    def set_solicitud_estudiante_destroy
        @solicitud_estudiante = SolicitudEstudiante.find_by(id_solicitud: params[:id_solicitud])
    end

    # Only allow a list of trusted parameters through.
    def solicitud_estudiante_params
      params.require(:solicitud_estudiante).permit(:id_solicitud, :id_estudiante, :tipo_solicitud, :fecha, :informacion_adicional)
    end
end
