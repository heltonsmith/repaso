require "test_helper"

class ConsumoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get consumo_index_url
    assert_response :success
  end
end
