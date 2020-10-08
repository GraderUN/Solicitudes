require 'test_helper'

class SolicitudProfesorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitud_profesor = solicitud_profesors(:one)
  end

  test "should get index" do
    get solicitud_profesors_url
    assert_response :success
  end

  test "should get new" do
    get new_solicitud_profesor_url
    assert_response :success
  end

  test "should create solicitud_profesor" do
    assert_difference('SolicitudProfesor.count') do
      post solicitud_profesors_url, params: { solicitud_profesor: { Fecha: @solicitud_profesor.Fecha, id_profesor: @solicitud_profesor.id_profesor, id_solicitud: @solicitud_profesor.id_solicitud, informacion_adicional: @solicitud_profesor.informacion_adicional, tipo_solicitud: @solicitud_profesor.tipo_solicitud } }
    end

    assert_redirected_to solicitud_profesor_url(SolicitudProfesor.last)
  end

  test "should show solicitud_profesor" do
    get solicitud_profesor_url(@solicitud_profesor)
    assert_response :success
  end

  test "should get edit" do
    get edit_solicitud_profesor_url(@solicitud_profesor)
    assert_response :success
  end

  test "should update solicitud_profesor" do
    patch solicitud_profesor_url(@solicitud_profesor), params: { solicitud_profesor: { Fecha: @solicitud_profesor.Fecha, id_profesor: @solicitud_profesor.id_profesor, id_solicitud: @solicitud_profesor.id_solicitud, informacion_adicional: @solicitud_profesor.informacion_adicional, tipo_solicitud: @solicitud_profesor.tipo_solicitud } }
    assert_redirected_to solicitud_profesor_url(@solicitud_profesor)
  end

  test "should destroy solicitud_profesor" do
    assert_difference('SolicitudProfesor.count', -1) do
      delete solicitud_profesor_url(@solicitud_profesor)
    end

    assert_redirected_to solicitud_profesors_url
  end
end
