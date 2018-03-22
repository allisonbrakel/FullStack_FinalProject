require 'test_helper'

class CateogryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cateogry_index_url
    assert_response :success
  end

  test "should get show" do
    get cateogry_show_url
    assert_response :success
  end

end
