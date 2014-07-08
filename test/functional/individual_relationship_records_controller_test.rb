require 'test_helper'

class IndividualRelationshipRecordsControllerTest < ActionController::TestCase
  setup do
    @individual_relationship_record = individual_relationship_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:individual_relationship_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create individual_relationship_record" do
    assert_difference('IndividualRelationshipRecord.count') do
      post :create, :individual_relationship_record => { :left_individual_id => @individual_relationship_record.left_individual_id, :relationship => @individual_relationship_record.relationship, :right_individual_id => @individual_relationship_record.right_individual_id }
    end

    assert_redirected_to individual_relationship_record_path(assigns(:individual_relationship_record))
  end

  test "should show individual_relationship_record" do
    get :show, :id => @individual_relationship_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @individual_relationship_record
    assert_response :success
  end

  test "should update individual_relationship_record" do
    put :update, :id => @individual_relationship_record, :individual_relationship_record => { :left_individual_id => @individual_relationship_record.left_individual_id, :relationship => @individual_relationship_record.relationship, :right_individual_id => @individual_relationship_record.right_individual_id }
    assert_redirected_to individual_relationship_record_path(assigns(:individual_relationship_record))
  end

  test "should destroy individual_relationship_record" do
    assert_difference('IndividualRelationshipRecord.count', -1) do
      delete :destroy, :id => @individual_relationship_record
    end

    assert_redirected_to individual_relationship_records_path
  end
end
