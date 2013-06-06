require 'test_helper'

class OrganizationsRostersControllerTest < ActionController::TestCase
  setup do
    @organizations_roster = organizations_rosters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organizations_rosters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organizations_roster" do
    assert_difference('OrganizationsRoster.count') do
      post :create, organizations_roster: { individual_id: @organizations_roster.individual_id, organization_id: @organizations_roster.organization_id, start_date: @organizations_roster.start_date }
    end

    assert_redirected_to organizations_roster_path(assigns(:organizations_roster))
  end

  test "should show organizations_roster" do
    get :show, id: @organizations_roster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organizations_roster
    assert_response :success
  end

  test "should update organizations_roster" do
    put :update, id: @organizations_roster, organizations_roster: { individual_id: @organizations_roster.individual_id, organization_id: @organizations_roster.organization_id, start_date: @organizations_roster.start_date }
    assert_redirected_to organizations_roster_path(assigns(:organizations_roster))
  end

  test "should destroy organizations_roster" do
    assert_difference('OrganizationsRoster.count', -1) do
      delete :destroy, id: @organizations_roster
    end

    assert_redirected_to organizations_rosters_path
  end
end
