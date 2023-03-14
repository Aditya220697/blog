require "application_system_test_case"

class AvinashesTest < ApplicationSystemTestCase
  setup do
    @avinash = avinashes(:one)
  end

  test "visiting the index" do
    visit avinashes_url
    assert_selector "h1", text: "Avinashes"
  end

  test "should create avinash" do
    visit avinashes_url
    click_on "New avinash"

    fill_in "Age", with: @avinash.age
    fill_in "Name", with: @avinash.name
    click_on "Create Avinash"

    assert_text "Avinash was successfully created"
    click_on "Back"
  end

  test "should update Avinash" do
    visit avinash_url(@avinash)
    click_on "Edit this avinash", match: :first

    fill_in "Age", with: @avinash.age
    fill_in "Name", with: @avinash.name
    click_on "Update Avinash"

    assert_text "Avinash was successfully updated"
    click_on "Back"
  end

  test "should destroy Avinash" do
    visit avinash_url(@avinash)
    click_on "Destroy this avinash", match: :first

    assert_text "Avinash was successfully destroyed"
  end
end
