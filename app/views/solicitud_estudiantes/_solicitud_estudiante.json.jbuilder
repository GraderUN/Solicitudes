json.extract! solicitud_estudiante, :id, :id_solicitud, :id_estudiante, :tipo_solicitud, :fecha, :informacion_adicional, :created_at, :updated_at
json.url solicitud_estudiante_url(solicitud_estudiante, format: :json)
