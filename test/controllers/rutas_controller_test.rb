require 'test_helper'

class RutasControllerTest < ActionController::TestCase
  test "should get recorrido" do
    get :recorrido
    assert_response :success
  end

end
