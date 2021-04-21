require 'test_helper'

class WorkonasmControllerTest < ActionDispatch::IntegrationTest
  test "should get run" do
    get workonasm_run_url
    assert_response :success
  end

end
