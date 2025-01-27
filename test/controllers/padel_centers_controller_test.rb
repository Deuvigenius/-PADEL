require "test_helper"

class PadelCentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @padel_center = padel_centers(:one)
  end

  test "should get index" do
    get padel_centers_url
    assert_response :success
  end

  test "should get new" do
    get new_padel_center_url
    assert_response :success
  end

  test "should create padel_center" do
    assert_difference("PadelCenter.count") do
      post padel_centers_url, params: { padel_center: { address: @padel_center.address, name: @padel_center.name, number_of_court: @padel_center.number_of_court, phone_number: @padel_center.phone_number, photo: @padel_center.photo, rating: @padel_center.rating, user_id: @padel_center.user_id } }
    end

    assert_redirected_to padel_center_url(PadelCenter.last)
  end

  test "should show padel_center" do
    get padel_center_url(@padel_center)
    assert_response :success
  end

  test "should get edit" do
    get edit_padel_center_url(@padel_center)
    assert_response :success
  end

  test "should update padel_center" do
    patch padel_center_url(@padel_center), params: { padel_center: { address: @padel_center.address, name: @padel_center.name, number_of_court: @padel_center.number_of_court, phone_number: @padel_center.phone_number, photo: @padel_center.photo, rating: @padel_center.rating, user_id: @padel_center.user_id } }
    assert_redirected_to padel_center_url(@padel_center)
  end

  test "should destroy padel_center" do
    assert_difference("PadelCenter.count", -1) do
      delete padel_center_url(@padel_center)
    end

    assert_redirected_to padel_centers_url
  end
end
