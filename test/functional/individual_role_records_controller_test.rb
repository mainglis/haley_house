require 'test_helper'

class IndividualRoleRecordsControllerTest < ActionController::TestCase
  setup do
    @individual_role_record = individual_role_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:individual_role_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create individual_role_record" do
    assert_difference('IndividualRoleRecord.count') do
      post :create, individual_role_record: { end_date: @individual_role_record.end_date, individual_id: @individual_role_record.individual_id, role_id: @individual_role_record.role_id, start_date: @individual_role_record.start_date }
    end

    assert_redirected_to individual_role_record_path(assigns(:individual_role_record))
  end

  test "should show individual_role_record" do
    get :show, id: @individual_role_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @individual_role_record
    assert_response :success
  end

  test "should update individual_role_record" do
    put :update, id: @individual_role_record, individual_role_record: { end_date: @individual_role_record.end_date, individual_id: @individual_role_record.individual_id, role_id: @individual_role_record.role_id, start_date: @individual_role_record.start_date }
    assert_redirected_to individual_role_record_path(assigns(:individual_role_record))
  end

  test "should destroy individual_role_record" do
    assert_difference('IndividualRoleRecord.count', -1) do
      delete :destroy, id: @individual_role_record
    end

    assert_redirected_to individual_role_records_path
  end
end
