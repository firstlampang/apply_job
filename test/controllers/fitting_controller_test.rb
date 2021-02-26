require "test_helper"

class FittingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fitting_index_url
    assert_response :success
  end
end
