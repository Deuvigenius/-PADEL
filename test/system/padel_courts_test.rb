require "application_system_test_case"

class PadelCourtsTest < ApplicationSystemTestCase
  setup do
    @padel_court = padel_courts(:one)
  end

  test "visiting the index" do
    visit padel_courts_url
    assert_selector "h1", text: "Padel courts"
  end

  test "should create padel court" do
    visit padel_courts_url
    click_on "New padel court"

    fill_in "Content", with: @padel_court.content
    fill_in "Number", with: @padel_court.number
    fill_in "Padel center", with: @padel_court.padel_center_id
    fill_in "Photo", with: @padel_court.photo
    click_on "Create Padel court"

    assert_text "Padel court was successfully created"
    click_on "Back"
  end

  test "should update Padel court" do
    visit padel_court_url(@padel_court)
    click_on "Edit this padel court", match: :first

    fill_in "Content", with: @padel_court.content
    fill_in "Number", with: @padel_court.number
    fill_in "Padel center", with: @padel_court.padel_center_id
    fill_in "Photo", with: @padel_court.photo
    click_on "Update Padel court"

    assert_text "Padel court was successfully updated"
    click_on "Back"
  end

  test "should destroy Padel court" do
    visit padel_court_url(@padel_court)
    click_on "Destroy this padel court", match: :first

    assert_text "Padel court was successfully destroyed"
  end
end
