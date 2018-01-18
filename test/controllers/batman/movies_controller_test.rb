require 'test_helper'

class Batman::MoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get batman_movies_url
    assert_response :success
  end
end
