require "test_helper"

class MyschedulesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get myschedules_index_url
    assert_response :success
  end
end
