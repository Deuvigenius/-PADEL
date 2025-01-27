require "test_helper"

class CenterReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @center_review = center_reviews(:one)
  end

  test "should get index" do
    get center_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_center_review_url
    assert_response :success
  end

  test "should create center_review" do
    assert_difference("CenterReview.count") do
      post center_reviews_url, params: { center_review: { description: @center_review.description, padel_center_id: @center_review.padel_center_id, star: @center_review.star, user_id: @center_review.user_id } }
    end

    assert_redirected_to center_review_url(CenterReview.last)
  end

  test "should show center_review" do
    get center_review_url(@center_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_center_review_url(@center_review)
    assert_response :success
  end

  test "should update center_review" do
    patch center_review_url(@center_review), params: { center_review: { description: @center_review.description, padel_center_id: @center_review.padel_center_id, star: @center_review.star, user_id: @center_review.user_id } }
    assert_redirected_to center_review_url(@center_review)
  end

  test "should destroy center_review" do
    assert_difference("CenterReview.count", -1) do
      delete center_review_url(@center_review)
    end

    assert_redirected_to center_reviews_url
  end
end
