require 'test_helper'

class BlogControllerTest < ActionDispatch::IntegrationTest
  test "should get read" do
    get blog_read_url
    assert_response :success
  end

end
