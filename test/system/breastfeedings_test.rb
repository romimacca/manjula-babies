require "application_system_test_case"

class BreastfeedingsTest < ApplicationSystemTestCase
  setup do
    @breastfeeding = breastfeedings(:one)
  end

  test "visiting the index" do
    visit breastfeedings_url
    assert_selector "h1", text: "Breastfeedings"
  end

  test "creating a Breastfeeding" do
    visit breastfeedings_url
    click_on "New Breastfeeding"

    fill_in "Cc-milk", with: @breastfeeding.cc-milk
    fill_in "Day", with: @breastfeeding.day
    fill_in "Time", with: @breastfeeding.time
    click_on "Create Breastfeeding"

    assert_text "Breastfeeding was successfully created"
    click_on "Back"
  end

  test "updating a Breastfeeding" do
    visit breastfeedings_url
    click_on "Edit", match: :first

    fill_in "Cc-milk", with: @breastfeeding.cc-milk
    fill_in "Day", with: @breastfeeding.day
    fill_in "Time", with: @breastfeeding.time
    click_on "Update Breastfeeding"

    assert_text "Breastfeeding was successfully updated"
    click_on "Back"
  end

  test "destroying a Breastfeeding" do
    visit breastfeedings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Breastfeeding was successfully destroyed"
  end
end
