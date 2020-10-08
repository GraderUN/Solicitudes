require 'test_helper'

class SolicitudEstudiantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitud_estudiante = solicitud_estudiantes(:one)
  end

  test "should get index" do
    get solicitud_estudiantes_url
    assert_response :success
  end

  test "should get new" do
    get new_solicitud_estudiante_url
    assert_response :success
  end

  test "should create solicitud_estudiante" do
    assert_difference('SolicitudEstudiante.count') do
      post solicitud_estudiantes_url, params: { solicitud_estudiante: { fecha: @solicitud_estudiante.fecha, id_estudiante: @solicitud_estudiante.id_estudiante, id_solicitud: @solicitud_estudiante.id_solicitud, informacion_adicional: @solicitud_estudiante.informacion_adicional, tipo_solicitud: @solicitud_estudiante.tipo_solicitud } }
    end

    assert_redirected_to solicitud_estudiante_url(SolicitudEstudiante.last)
  end

  test "should show solicitud_estudiante" do
    get solicitud_estudiante_url(@solicitud_estudiante)
    assert_response :success
  end

  test "should get edit" do
    get edit_solicitud_estudiante_url(@solicitud_estudiante)
    assert_response :success
  end

  test "should update solicitud_estudiante" do
    patch solicitud_estudiante_url(@solicitud_estudiante), params: { solicitud_estudiante: { fecha: @solicitud_estudiante.fecha, id_estudiante: @solicitud_estudiante.id_estudiante, id_solicitud: @solicitud_estudiante.id_solicitud, informacion_adicional: @solicitud_estudiante.informacion_adicional, tipo_solicitud: @solicitud_estudiante.tipo_solicitud } }
    assert_redirected_to solicitud_estudiante_url(@solicitud_estudiante)
  end

  test "should destroy solicitud_estudiante" do
    assert_difference('SolicitudEstudiante.count', -1) do
      delete solicitud_estudiante_url(@solicitud_estudiante)
    end

    assert_redirected_to solicitud_estudiantes_url
  end
end
