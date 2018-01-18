require 'test_helper'

class Superman::MoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get superman_movies_url
    assert_response :success
  end
end
