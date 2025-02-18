require "application_system_test_case"

class RentsTest < ApplicationSystemTestCase
  setup do
    @rent = rents(:one)
  end

  test "visiting the index" do
    visit rents_url
    assert_selector "h1", text: "Rents"
  end

  test "should create rent" do
    visit rents_url
    click_on "New rent"

    fill_in "Padel court", with: @rent.padel_court_id
    fill_in "Start time", with: @rent.start_time
    fill_in "User", with: @rent.user_id
    click_on "Create Rent"

    assert_text "Rent was successfully created"
    click_on "Back"
  end

  test "should update Rent" do
    visit rent_url(@rent)
    click_on "Edit this rent", match: :first

    fill_in "Padel court", with: @rent.padel_court_id
    fill_in "Start time", with: @rent.start_time.to_s
    fill_in "User", with: @rent.user_id
    click_on "Update Rent"

    assert_text "Rent was successfully updated"
    click_on "Back"
  end

  test "should destroy Rent" do
    visit rent_url(@rent)
    click_on "Destroy this rent", match: :first

    assert_text "Rent was successfully destroyed"
  end
end
