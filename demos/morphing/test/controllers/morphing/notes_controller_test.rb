require "test_helper"

module Morphing
  class NotesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get notes_index_url
      assert_response :success
    end

    test "should get create" do
      get notes_create_url
      assert_response :success
    end
  end
end
