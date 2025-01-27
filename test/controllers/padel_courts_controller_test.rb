require "test_helper"

class PadelCourtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @padel_court = padel_courts(:one)
  end

  test "should get index" do
    get padel_courts_url
    assert_response :success
  end

  test "should get new" do
    get new_padel_court_url
    assert_response :success
  end

  test "should create padel_court" do
    assert_difference("PadelCourt.count") do
      post padel_courts_url, params: { padel_court: { content: @padel_court.content, number: @padel_court.number, padel_center_id: @padel_court.padel_center_id, photo: @padel_court.photo } }
    end

    assert_redirected_to padel_court_url(PadelCourt.last)
  end

  test "should show padel_court" do
    get padel_court_url(@padel_court)
    assert_response :success
  end

  test "should get edit" do
    get edit_padel_court_url(@padel_court)
    assert_response :success
  end

  test "should update padel_court" do
    patch padel_court_url(@padel_court), params: { padel_court: { content: @padel_court.content, number: @padel_court.number, padel_center_id: @padel_court.padel_center_id, photo: @padel_court.photo } }
    assert_redirected_to padel_court_url(@padel_court)
  end

  test "should destroy padel_court" do
    assert_difference("PadelCourt.count", -1) do
      delete padel_court_url(@padel_court)
    end

    assert_redirected_to padel_courts_url
  end
end
