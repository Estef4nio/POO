require "test_helper"

class CoordenadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coordenador = coordenadors(:one)
  end

  test "should get index" do
    get coordenadors_url
    assert_response :success
  end

  test "should get new" do
    get new_coordenador_url
    assert_response :success
  end

  test "should create coordenador" do
    assert_difference("Coordenador.count") do
      post coordenadors_url, params: { coordenador: {  } }
    end

    assert_redirected_to coordenador_url(Coordenador.last)
  end

  test "should show coordenador" do
    get coordenador_url(@coordenador)
    assert_response :success
  end

  test "should get edit" do
    get edit_coordenador_url(@coordenador)
    assert_response :success
  end

  test "should update coordenador" do
    patch coordenador_url(@coordenador), params: { coordenador: {  } }
    assert_redirected_to coordenador_url(@coordenador)
  end

  test "should destroy coordenador" do
    assert_difference("Coordenador.count", -1) do
      delete coordenador_url(@coordenador)
    end

    assert_redirected_to coordenadors_url
  end
end
