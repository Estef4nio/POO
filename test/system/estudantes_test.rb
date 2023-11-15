require "application_system_test_case"

class EstudantesTest < ApplicationSystemTestCase
  setup do
    @estudante = estudantes(:one)
  end

  test "visiting the index" do
    visit estudantes_url
    assert_selector "h1", text: "Estudantes"
  end

  test "should create estudante" do
    visit estudantes_url
    click_on "New estudante"

    click_on "Create Estudante"

    assert_text "Estudante was successfully created"
    click_on "Back"
  end

  test "should update Estudante" do
    visit estudante_url(@estudante)
    click_on "Edit this estudante", match: :first

    click_on "Update Estudante"

    assert_text "Estudante was successfully updated"
    click_on "Back"
  end

  test "should destroy Estudante" do
    visit estudante_url(@estudante)
    click_on "Destroy this estudante", match: :first

    assert_text "Estudante was successfully destroyed"
  end
end
