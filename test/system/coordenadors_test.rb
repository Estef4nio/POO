require "application_system_test_case"

class CoordenadorsTest < ApplicationSystemTestCase
  setup do
    @coordenador = coordenadors(:one)
  end

  test "visiting the index" do
    visit coordenadors_url
    assert_selector "h1", text: "Coordenadors"
  end

  test "should create coordenador" do
    visit coordenadors_url
    click_on "New coordenador"

    click_on "Create Coordenador"

    assert_text "Coordenador was successfully created"
    click_on "Back"
  end

  test "should update Coordenador" do
    visit coordenador_url(@coordenador)
    click_on "Edit this coordenador", match: :first

    click_on "Update Coordenador"

    assert_text "Coordenador was successfully updated"
    click_on "Back"
  end

  test "should destroy Coordenador" do
    visit coordenador_url(@coordenador)
    click_on "Destroy this coordenador", match: :first

    assert_text "Coordenador was successfully destroyed"
  end
end
