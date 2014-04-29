require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:images)
    assert_not_nil assigns(:nodes)
  end
end
