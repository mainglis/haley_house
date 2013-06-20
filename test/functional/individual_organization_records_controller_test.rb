require 'test_helper'

class IndividualOrganizationRecordsControllerTest < ActionController::TestCase
  setup do
    @individual_organization_record = individual_organization_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:individual_organization_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create individual_organization_record" do
    assert_difference('IndividualOrganizationRecord.count') do
      post :create, individual_organization_record: { individual_id: @individual_organization_record.individual_id, organization_id: @individual_organization_record.organization_id, start_date: @individual_organization_record.start_date }
    end

    assert_redirected_to individual_organization_record_path(assigns(:individual_organization_record))
  end

  test "should show individual_organization_record" do
    get :show, id: @individual_organization_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @individual_organization_record
    assert_response :success
  end

  test "should update individual_organization_record" do
    put :update, id: @individual_organization_record, individual_organization_record: { individual_id: @individual_organization_record.individual_id, organization_id: @individual_organization_record.organization_id, start_date: @individual_organization_record.start_date }
    assert_redirected_to individual_organization_record_path(assigns(:individual_organization_record))
  end

  test "should destroy individual_organization_record" do
    assert_difference('IndividualOrganizationRecord.count', -1) do
      delete :destroy, id: @individual_organization_record
    end

    assert_redirected_to individual_organization_records_path
  end
end
