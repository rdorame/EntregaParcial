require 'test_helper'

class CliSistemasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cli_sistema = cli_sistemas(:one)
  end

  test "should get index" do
    get cli_sistemas_url
    assert_response :success
  end

  test "should get new" do
    get new_cli_sistema_url
    assert_response :success
  end

  test "should create cli_sistema" do
    assert_difference('CliSistema.count') do
      post cli_sistemas_url, params: { cli_sistema: { CP: @cli_sistema.CP, CURP: @cli_sistema.CURP, RFC: @cli_sistema.RFC, domicilio: @cli_sistema.domicilio, email: @cli_sistema.email, name: @cli_sistema.name, password: @cli_sistema.password, phone: @cli_sistema.phone, representante: @cli_sistema.representante, type: @cli_sistema.type, user: @cli_sistema.user } }
    end

    assert_redirected_to cli_sistema_url(CliSistema.last)
  end

  test "should show cli_sistema" do
    get cli_sistema_url(@cli_sistema)
    assert_response :success
  end

  test "should get edit" do
    get edit_cli_sistema_url(@cli_sistema)
    assert_response :success
  end

  test "should update cli_sistema" do
    patch cli_sistema_url(@cli_sistema), params: { cli_sistema: { CP: @cli_sistema.CP, CURP: @cli_sistema.CURP, RFC: @cli_sistema.RFC, domicilio: @cli_sistema.domicilio, email: @cli_sistema.email, name: @cli_sistema.name, password: @cli_sistema.password, phone: @cli_sistema.phone, representante: @cli_sistema.representante, type: @cli_sistema.type, user: @cli_sistema.user } }
    assert_redirected_to cli_sistema_url(@cli_sistema)
  end

  test "should destroy cli_sistema" do
    assert_difference('CliSistema.count', -1) do
      delete cli_sistema_url(@cli_sistema)
    end

    assert_redirected_to cli_sistemas_url
  end
end
