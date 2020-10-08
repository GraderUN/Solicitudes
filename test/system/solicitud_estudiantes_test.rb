require "application_system_test_case"

class SolicitudEstudiantesTest < ApplicationSystemTestCase
  setup do
    @solicitud_estudiante = solicitud_estudiantes(:one)
  end

  test "visiting the index" do
    visit solicitud_estudiantes_url
    assert_selector "h1", text: "Solicitud Estudiantes"
  end

  test "creating a Solicitud estudiante" do
    visit solicitud_estudiantes_url
    click_on "New Solicitud Estudiante"

    fill_in "Fecha", with: @solicitud_estudiante.fecha
    fill_in "Id estudiante", with: @solicitud_estudiante.id_estudiante
    fill_in "Id solicitud", with: @solicitud_estudiante.id_solicitud
    fill_in "Informacion adicional", with: @solicitud_estudiante.informacion_adicional
    fill_in "Tipo solicitud", with: @solicitud_estudiante.tipo_solicitud
    click_on "Create Solicitud estudiante"

    assert_text "Solicitud estudiante was successfully created"
    click_on "Back"
  end

  test "updating a Solicitud estudiante" do
    visit solicitud_estudiantes_url
    click_on "Edit", match: :first

    fill_in "Fecha", with: @solicitud_estudiante.fecha
    fill_in "Id estudiante", with: @solicitud_estudiante.id_estudiante
    fill_in "Id solicitud", with: @solicitud_estudiante.id_solicitud
    fill_in "Informacion adicional", with: @solicitud_estudiante.informacion_adicional
    fill_in "Tipo solicitud", with: @solicitud_estudiante.tipo_solicitud
    click_on "Update Solicitud estudiante"

    assert_text "Solicitud estudiante was successfully updated"
    click_on "Back"
  end

  test "destroying a Solicitud estudiante" do
    visit solicitud_estudiantes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Solicitud estudiante was successfully destroyed"
  end
end
