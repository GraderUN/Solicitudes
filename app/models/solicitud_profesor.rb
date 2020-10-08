class SolicitudProfesor
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic

  field :id_solicitud, type: String
  field :id_profesor, type: String
  field :tipo_solicitud, type: String
  field :Fecha, type: String
  field :informacion_adicional, type: String
end
