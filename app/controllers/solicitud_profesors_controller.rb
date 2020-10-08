class SolicitudProfesorsController < ApplicationController
  before_action :set_solicitud_profesor_create, only: [:show, :edit, :update]
  before_action :set_solicitud_profesor_destroy, only: [:destroy, :get ]
  
  # GET /solicitud_profesors
  # GET /solicitud_profesors.json
  def index
    @solicitud_profesors = SolicitudProfesor.all
  end

  def get
    solicitud_profesors = SolicitudProfesor.find_by(id_solicitud: params[:id_solicitud])
    if solicitud_profesors.nil?
      render json: { error: 'El número de solicitud no existe.' }, status: :forbidden
      #@solicitud_profesors = SolicitudProfesor.all
      #  @solicitud_profesors = SolicitudProfesor.find_by(id_solicitud: params[:id_solicitud])
    else
        #@solicitud_profesors = SolicitudProfesor.find_by(id: params[:id_solicitud])
        #@solicitud_profesors = SolicitudProfesor.all
        render json: { id_solicitud: solicitud_profesors.id_solicitud, id_profesor: solicitud_profesors.id_profesor,
                       tipo_solicitud: solicitud_profesors.tipo_solicitud, Fecha: solicitud_profesors.Fecha,
                       informacion_adicional: solicitud_profesors.informacion_adicional  }
    end
  end

  # GET /solicitud_profesors/1
  # GET /solicitud_profesors/1.json
  def show
  end

  # GET /solicitud_profesors/new
  def new
    @solicitud_profesor = SolicitudProfesor.new
  end

  # GET /solicitud_profesors/1/edit
  def edit
  end

  # POST /solicitud_profesors
  # POST /solicitud_profesors.json
  def create
    @solicitud_profesor = SolicitudProfesor.new(solicitud_profesor_params)

    respond_to do |format|
      if @solicitud_profesor.save
        format.html { redirect_to @solicitud_profesor, notice: 'Solicitud profesor ha sido creada.' }
        format.json { render :show, status: :created, location: @solicitud_profesor }
      else
        format.html { render :new }
        format.json { render json: @solicitud_profesor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicitud_profesors/1
  # PATCH/PUT /solicitud_profesors/1.json
  def update
    respond_to do |format|
      if @solicitud_profesor.update(solicitud_profesor_params)
        format.html { redirect_to @solicitud_profesor, notice: 'Solicitud profesor ha sido actualizada.' }
        format.json { render :show, status: :ok, location: @solicitud_profesor }
      else
        format.html { render :edit }
        format.json { render json: @solicitud_profesor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitud_profesors/1
  # DELETE /solicitud_profesors/1.json
 # def destroy
  #  @solicitud_profesor.destroy
   # respond_to do |format|
    #  format.html { redirect_to solicitud_profesors_url, notice: 'Solicitud profesor ha sido eliminada.' }
     # format.json { head :no_content }
    #end
  #end
  def destroy
    @solicitud_profesor = SolicitudProfesor.find_by(id_solicitud: params[:id_solicitud])
    if @solicitud_profesor.present?
      #@solicitud_profesor.destroy
      #render json: { ESTADO: 'Solicitud profesor ha sido eliminada.' }, status: :forbidden
      @solicitud_profesor.destroy
    end
    respond_to do |format|
    format.html { redirect_to solicitud_profesors_url, notice: 'Solicitud profesor ha sido eliminada.' }
    format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitud_profesor_create
        @solicitud_profesor = SolicitudProfesor.find(params[:id])
    end

    def set_solicitud_profesor_destroy
        @solicitud_profesor = SolicitudProfesor.find_by(id_solicitud: params[:id_solicitud])
    end

    # Only allow a list of trusted parameters through.
    def solicitud_profesor_params
      params.require(:solicitud_profesor).permit(:id_solicitud, :id_profesor, :tipo_solicitud, :Fecha, :informacion_adicional)
    end
end
