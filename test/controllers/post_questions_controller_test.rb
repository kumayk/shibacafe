require 'test_helper'

class PostQuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get post_questions_new_url
    assert_response :success
  end

  test "should get index" do
    get post_questions_index_url
    assert_response :success
  end

  test "should get show" do
    get post_questions_show_url
    assert_response :success
  end

  test "should get edit" do
    get post_questions_edit_url
    assert_response :success
  end

end
