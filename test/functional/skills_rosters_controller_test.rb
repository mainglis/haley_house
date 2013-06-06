require 'test_helper'

class SkillsRostersControllerTest < ActionController::TestCase
  setup do
    @skills_roster = skills_rosters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skills_rosters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skills_roster" do
    assert_difference('SkillsRoster.count') do
      post :create, skills_roster: { date_gained: @skills_roster.date_gained, individual_id: @skills_roster.individual_id, skill_id: @skills_roster.skill_id }
    end

    assert_redirected_to skills_roster_path(assigns(:skills_roster))
  end

  test "should show skills_roster" do
    get :show, id: @skills_roster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skills_roster
    assert_response :success
  end

  test "should update skills_roster" do
    put :update, id: @skills_roster, skills_roster: { date_gained: @skills_roster.date_gained, individual_id: @skills_roster.individual_id, skill_id: @skills_roster.skill_id }
    assert_redirected_to skills_roster_path(assigns(:skills_roster))
  end

  test "should destroy skills_roster" do
    assert_difference('SkillsRoster.count', -1) do
      delete :destroy, id: @skills_roster
    end

    assert_redirected_to skills_rosters_path
  end
end
