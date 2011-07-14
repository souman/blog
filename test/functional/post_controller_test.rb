require 'test_helper'

class PostControllerTest < ActionController::TestCase
  test "should get recentupdates" do
    get :recentupdates
    assert_response :success
  end

end
