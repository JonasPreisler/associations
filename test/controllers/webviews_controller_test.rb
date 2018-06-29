require 'test_helper'

class WebviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @webview = webviews(:one)
  end

  test "should get index" do
    get webviews_url
    assert_response :success
  end

  test "should get new" do
    get new_webview_url
    assert_response :success
  end

  test "should create webview" do
    assert_difference('Webview.count') do
      post webviews_url, params: { webview: { name: @webview.name } }
    end

    assert_redirected_to webview_url(Webview.last)
  end

  test "should show webview" do
    get webview_url(@webview)
    assert_response :success
  end

  test "should get edit" do
    get edit_webview_url(@webview)
    assert_response :success
  end

  test "should update webview" do
    patch webview_url(@webview), params: { webview: { name: @webview.name } }
    assert_redirected_to webview_url(@webview)
  end

  test "should destroy webview" do
    assert_difference('Webview.count', -1) do
      delete webview_url(@webview)
    end

    assert_redirected_to webviews_url
  end
end
