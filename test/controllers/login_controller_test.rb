# * Carga la configuración y utilidades necesarias para las pruebas.
require "test_helper"

# * Define las pruebas de integración del controlador Login.
class LoginControllerTest < ActionDispatch::IntegrationTest

  # * Verifica que la página principal del Login responda correctamente.
  test "should get index" do

    # * Realiza una solicitud GET a la página del Login.
    get login_index_url

    # * Comprueba que la solicitud haya respondido exitosamente.
    assert_response :success
  end
end