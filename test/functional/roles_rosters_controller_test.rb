require 'test_helper'

class RolesRostersControllerTest < ActionController::TestCase
  setup do
    @roles_roster = roles_rosters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roles_rosters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create roles_roster" do
    assert_difference('RolesRoster.count') do
      post :create, roles_roster: { end_date: @roles_roster.end_date, individual_id: @roles_roster.individual_id, role_id: @roles_roster.role_id, start_date: @roles_roster.start_date }
    end

    assert_redirected_to roles_roster_path(assigns(:roles_roster))
  end

  test "should show roles_roster" do
    get :show, id: @roles_roster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @roles_roster
    assert_response :success
  end

  test "should update roles_roster" do
    put :update, id: @roles_roster, roles_roster: { end_date: @roles_roster.end_date, individual_id: @roles_roster.individual_id, role_id: @roles_roster.role_id, start_date: @roles_roster.start_date }
    assert_redirected_to roles_roster_path(assigns(:roles_roster))
  end

  test "should destroy roles_roster" do
    assert_difference('RolesRoster.count', -1) do
      delete :destroy, id: @roles_roster
    end

    assert_redirected_to roles_rosters_path
  end
end
