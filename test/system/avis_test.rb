require "application_system_test_case"

class AvisTest < ApplicationSystemTestCase
  setup do
    @avi = avis(:one)
  end

  test "visiting the index" do
    visit avis_url
    assert_selector "h1", text: "Avis"
  end

  test "should create avi" do
    visit avis_url
    click_on "New avi"

    fill_in "Age", with: @avi.age
    fill_in "Name", with: @avi.name
    click_on "Create Avi"

    assert_text "Avi was successfully created"
    click_on "Back"
  end

  test "should update Avi" do
    visit avi_url(@avi)
    click_on "Edit this avi", match: :first

    fill_in "Age", with: @avi.age
    fill_in "Name", with: @avi.name
    click_on "Update Avi"

    assert_text "Avi was successfully updated"
    click_on "Back"
  end

  test "should destroy Avi" do
    visit avi_url(@avi)
    click_on "Destroy this avi", match: :first

    assert_text "Avi was successfully destroyed"
  end
end
