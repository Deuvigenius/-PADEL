require "application_system_test_case"

class PadelCentersTest < ApplicationSystemTestCase
  setup do
    @padel_center = padel_centers(:one)
  end

  test "visiting the index" do
    visit padel_centers_url
    assert_selector "h1", text: "Padel centers"
  end

  test "should create padel center" do
    visit padel_centers_url
    click_on "New padel center"

    fill_in "Address", with: @padel_center.address
    fill_in "Name", with: @padel_center.name
    fill_in "Number of court", with: @padel_center.number_of_court
    fill_in "Phone number", with: @padel_center.phone_number
    fill_in "Photo", with: @padel_center.photo
    fill_in "Rating", with: @padel_center.rating
    fill_in "User", with: @padel_center.user_id
    click_on "Create Padel center"

    assert_text "Padel center was successfully created"
    click_on "Back"
  end

  test "should update Padel center" do
    visit padel_center_url(@padel_center)
    click_on "Edit this padel center", match: :first

    fill_in "Address", with: @padel_center.address
    fill_in "Name", with: @padel_center.name
    fill_in "Number of court", with: @padel_center.number_of_court
    fill_in "Phone number", with: @padel_center.phone_number
    fill_in "Photo", with: @padel_center.photo
    fill_in "Rating", with: @padel_center.rating
    fill_in "User", with: @padel_center.user_id
    click_on "Update Padel center"

    assert_text "Padel center was successfully updated"
    click_on "Back"
  end

  test "should destroy Padel center" do
    visit padel_center_url(@padel_center)
    click_on "Destroy this padel center", match: :first

    assert_text "Padel center was successfully destroyed"
  end
end
