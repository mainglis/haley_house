require 'test_helper'

class IndividualSkillRecordsControllerTest < ActionController::TestCase
  setup do
    @individual_skill_record = individual_skill_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:individual_skill_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create individual_skill_record" do
    assert_difference('IndividualSkillRecord.count') do
      post :create, individual_skill_record: { date_gained: @individual_skill_record.date_gained, individual_id: @individual_skill_record.individual_id, skill_id: @individual_skill_record.skill_id }
    end

    assert_redirected_to individual_skill_record_path(assigns(:individual_skill_record))
  end

  test "should show individual_skill_record" do
    get :show, id: @individual_skill_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @individual_skill_record
    assert_response :success
  end

  test "should update individual_skill_record" do
    put :update, id: @individual_skill_record, individual_skill_record: { date_gained: @individual_skill_record.date_gained, individual_id: @individual_skill_record.individual_id, skill_id: @individual_skill_record.skill_id }
    assert_redirected_to individual_skill_record_path(assigns(:individual_skill_record))
  end

  test "should destroy individual_skill_record" do
    assert_difference('IndividualSkillRecord.count', -1) do
      delete :destroy, id: @individual_skill_record
    end

    assert_redirected_to individual_skill_records_path
  end
end
