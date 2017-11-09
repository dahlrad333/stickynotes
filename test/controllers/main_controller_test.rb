require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get main_index_url
    assert_response :success
  end

  test "should get add" do
    get main_add_url
    assert_response :success
  end

  test "should get addConfirm" do
    get main_addConfirm_url
    assert_response :success
  end

  test "should get delete" do
    get main_delete_url
    assert_response :success
  end

  test "should get edit" do
    get main_edit_url
    assert_response :success
  end

  test "should get editConfirm" do
    get main_editConfirm_url
    assert_response :success
  end

  test "should get updatePos" do
    get main_updatePos_url
    assert_response :success
  end

end
