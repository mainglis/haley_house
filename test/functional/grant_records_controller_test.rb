require 'test_helper'

class GrantRecordsControllerTest < ActionController::TestCase
  setup do
    @grant_record = grant_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grant_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grant_record" do
    assert_difference('GrantRecord.count') do
      post :create, grant_record: { amount: @grant_record.amount, ask_status: @grant_record.ask_status, fiscal_year: @grant_record.fiscal_year, funding_type: @grant_record.funding_type, grantmaker_id: @grant_record.grantmaker_id, notes: @grant_record.notes, notification_date: @grant_record.notification_date, organization_id: @grant_record.organization_id, program: @grant_record.program, request_type: @grant_record.request_type }
    end

    assert_redirected_to grant_record_path(assigns(:grant_record))
  end

  test "should show grant_record" do
    get :show, id: @grant_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grant_record
    assert_response :success
  end

  test "should update grant_record" do
    put :update, id: @grant_record, grant_record: { amount: @grant_record.amount, ask_status: @grant_record.ask_status, fiscal_year: @grant_record.fiscal_year, funding_type: @grant_record.funding_type, grantmaker_id: @grant_record.grantmaker_id, notes: @grant_record.notes, notification_date: @grant_record.notification_date, organization_id: @grant_record.organization_id, program: @grant_record.program, request_type: @grant_record.request_type }
    assert_redirected_to grant_record_path(assigns(:grant_record))
  end

  test "should destroy grant_record" do
    assert_difference('GrantRecord.count', -1) do
      delete :destroy, id: @grant_record
    end

    assert_redirected_to grant_records_path
  end
end
