require "application_system_test_case"

class CenterReviewsTest < ApplicationSystemTestCase
  setup do
    @center_review = center_reviews(:one)
  end

  test "visiting the index" do
    visit center_reviews_url
    assert_selector "h1", text: "Center reviews"
  end

  test "should create center review" do
    visit center_reviews_url
    click_on "New center review"

    fill_in "Description", with: @center_review.description
    fill_in "Padel center", with: @center_review.padel_center_id
    fill_in "Star", with: @center_review.star
    fill_in "User", with: @center_review.user_id
    click_on "Create Center review"

    assert_text "Center review was successfully created"
    click_on "Back"
  end

  test "should update Center review" do
    visit center_review_url(@center_review)
    click_on "Edit this center review", match: :first

    fill_in "Description", with: @center_review.description
    fill_in "Padel center", with: @center_review.padel_center_id
    fill_in "Star", with: @center_review.star
    fill_in "User", with: @center_review.user_id
    click_on "Update Center review"

    assert_text "Center review was successfully updated"
    click_on "Back"
  end

  test "should destroy Center review" do
    visit center_review_url(@center_review)
    click_on "Destroy this center review", match: :first

    assert_text "Center review was successfully destroyed"
  end
end
