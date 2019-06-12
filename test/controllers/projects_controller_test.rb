require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get homepage" do
    get projects_homepage_url
    assert_response :success
  end

end
