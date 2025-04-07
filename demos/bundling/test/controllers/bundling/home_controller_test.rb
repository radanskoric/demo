require "test_helper"

module Bundling
  class HomeControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get show" do
      get home_show_url
      assert_response :success
    end
  end
end
