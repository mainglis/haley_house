require 'test_helper'

class EventAttendanceRecordsControllerTest < ActionController::TestCase
  setup do
    @event_attendance_record = event_attendance_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_attendance_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_attendance_record" do
    assert_difference('EventAttendanceRecord.count') do
      post :create, event_attendance_record: { event_id: @event_attendance_record.event_id, individual_id: @event_attendance_record.individual_id, organization_id: @event_attendance_record.organization_id }
    end

    assert_redirected_to event_attendance_record_path(assigns(:event_attendance_record))
  end

  test "should show event_attendance_record" do
    get :show, id: @event_attendance_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_attendance_record
    assert_response :success
  end

  test "should update event_attendance_record" do
    put :update, id: @event_attendance_record, event_attendance_record: { event_id: @event_attendance_record.event_id, individual_id: @event_attendance_record.individual_id, organization_id: @event_attendance_record.organization_id }
    assert_redirected_to event_attendance_record_path(assigns(:event_attendance_record))
  end

  test "should destroy event_attendance_record" do
    assert_difference('EventAttendanceRecord.count', -1) do
      delete :destroy, id: @event_attendance_record
    end

    assert_redirected_to event_attendance_records_path
  end
end
