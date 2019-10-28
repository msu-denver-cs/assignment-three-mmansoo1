require "application_system_test_case"

class MakesTest < ApplicationSystemTestCase

  include  Devise::Test::IntegrationHelpers

  setup do
    @make = makes(:one)
    sign_in users(:one)
  end

  test "visiting the index" do
    visit makes_url
    assert_selector "h1", text: "Makes"
  end

  test "creating a Make" do
    visit makes_url
    click_on "New Make"

    fill_in "Country", with: @make.country
    fill_in "Make", with: @make.make
    click_on "Create Make"

    assert_text "Make was successfully created"
    click_on "Back"
  end

  test "updating a Make" do
    visit makes_url
    click_on "Edit", match: :first

    fill_in "Country", with: @make.country
    fill_in "Make", with: @make.make
    click_on "Update Make"

    assert_text "Make was successfully updated"
    click_on "Back"
  end

  test "destroying a Make" do
    visit makes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Make was successfully destroyed"
  end
end
