require "application_system_test_case"

class WebviewsTest < ApplicationSystemTestCase
  setup do
    @webview = webviews(:one)
  end

  test "visiting the index" do
    visit webviews_url
    assert_selector "h1", text: "Webviews"
  end

  test "creating a Webview" do
    visit webviews_url
    click_on "New Webview"

    fill_in "Name", with: @webview.name
    click_on "Create Webview"

    assert_text "Webview was successfully created"
    click_on "Back"
  end

  test "updating a Webview" do
    visit webviews_url
    click_on "Edit", match: :first

    fill_in "Name", with: @webview.name
    click_on "Update Webview"

    assert_text "Webview was successfully updated"
    click_on "Back"
  end

  test "destroying a Webview" do
    visit webviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Webview was successfully destroyed"
  end
end
