class SolicitudEstudiante
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id_solicitud, type: String
  field :id_estudiante, type: String
  field :tipo_solicitud, type: String
  field :fecha, type: String
  field :informacion_adicional, type: String
end
