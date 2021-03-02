require 'test_helper'

class AnasayfaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get anasayfa_index_url
    assert_response :success
  end

end
