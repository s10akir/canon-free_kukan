require 'test_helper'

class RoomStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room_status = room_statuses(:one)
  end

  test "should get index" do
    get room_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_room_status_url
    assert_response :success
  end

  test "should create room_status" do
    assert_difference('RoomStatus.count') do
      post room_statuses_url, params: { room_status: { room_id: @room_status.room_id, status: @room_status.status, user_id: @room_status.user_id } }
    end

    assert_redirected_to room_status_url(RoomStatus.last)
  end

  test "should show room_status" do
    get room_status_url(@room_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_room_status_url(@room_status)
    assert_response :success
  end

  test "should update room_status" do
    patch room_status_url(@room_status), params: { room_status: { room_id: @room_status.room_id, status: @room_status.status, user_id: @room_status.user_id } }
    assert_redirected_to room_status_url(@room_status)
  end

  test "should destroy room_status" do
    assert_difference('RoomStatus.count', -1) do
      delete room_status_url(@room_status)
    end

    assert_redirected_to room_statuses_url
  end
end
