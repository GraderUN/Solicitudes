require "application_system_test_case"

class SolicitudProfesorsTest < ApplicationSystemTestCase
  setup do
    @solicitud_profesor = solicitud_profesors(:one)
  end

  test "visiting the index" do
    visit solicitud_profesors_url
    assert_selector "h1", text: "Solicitud Profesors"
  end

  test "creating a Solicitud profesor" do
    visit solicitud_profesors_url
    click_on "New Solicitud Profesor"

    fill_in "Fecha", with: @solicitud_profesor.Fecha
    fill_in "Id profesor", with: @solicitud_profesor.id_profesor
    fill_in "Id solicitud", with: @solicitud_profesor.id_solicitud
    fill_in "Informacion adicional", with: @solicitud_profesor.informacion_adicional
    fill_in "Tipo solicitud", with: @solicitud_profesor.tipo_solicitud
    click_on "Create Solicitud profesor"

    assert_text "Solicitud profesor was successfully created"
    click_on "Back"
  end

  test "updating a Solicitud profesor" do
    visit solicitud_profesors_url
    click_on "Edit", match: :first

    fill_in "Fecha", with: @solicitud_profesor.Fecha
    fill_in "Id profesor", with: @solicitud_profesor.id_profesor
    fill_in "Id solicitud", with: @solicitud_profesor.id_solicitud
    fill_in "Informacion adicional", with: @solicitud_profesor.informacion_adicional
    fill_in "Tipo solicitud", with: @solicitud_profesor.tipo_solicitud
    click_on "Update Solicitud profesor"

    assert_text "Solicitud profesor was successfully updated"
    click_on "Back"
  end

  test "destroying a Solicitud profesor" do
    visit solicitud_profesors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Solicitud profesor was successfully destroyed"
  end
end
