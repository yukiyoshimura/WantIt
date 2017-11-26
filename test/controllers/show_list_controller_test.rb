require 'test_helper'

class ShowListControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get show_list_index_url
    assert_response :success
  end

end
