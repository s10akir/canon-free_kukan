require "application_system_test_case"

class RoomStatusesTest < ApplicationSystemTestCase
  setup do
    @room_status = room_statuses(:one)
  end

  test "visiting the index" do
    visit room_statuses_url
    assert_selector "h1", text: "Room Statuses"
  end

  test "creating a Room status" do
    visit room_statuses_url
    click_on "New Room Status"

    fill_in "Room", with: @room_status.room_id
    fill_in "Status", with: @room_status.status
    fill_in "User", with: @room_status.user_id
    click_on "Create Room status"

    assert_text "Room status was successfully created"
    click_on "Back"
  end

  test "updating a Room status" do
    visit room_statuses_url
    click_on "Edit", match: :first

    fill_in "Room", with: @room_status.room_id
    fill_in "Status", with: @room_status.status
    fill_in "User", with: @room_status.user_id
    click_on "Update Room status"

    assert_text "Room status was successfully updated"
    click_on "Back"
  end

  test "destroying a Room status" do
    visit room_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Room status was successfully destroyed"
  end
end
