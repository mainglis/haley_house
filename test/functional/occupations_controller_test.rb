require 'test_helper'

class OccupationsControllerTest < ActionController::TestCase
  setup do
    @occupation = occupations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:occupations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create occupation" do
    assert_difference('Occupation.count') do
      post :create, occupation: { employer_city: @occupation.employer_city, employer_name: @occupation.employer_name, employer_street_address: @occupation.employer_street_address, employer_zip: @occupation.employer_zip, end_date: @occupation.end_date, individual_id: @occupation.individual_id, sector: @occupation.sector, start_date: @occupation.start_date, title: @occupation.title }
    end

    assert_redirected_to occupation_path(assigns(:occupation))
  end

  test "should show occupation" do
    get :show, id: @occupation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @occupation
    assert_response :success
  end

  test "should update occupation" do
    put :update, id: @occupation, occupation: { employer_city: @occupation.employer_city, employer_name: @occupation.employer_name, employer_street_address: @occupation.employer_street_address, employer_zip: @occupation.employer_zip, end_date: @occupation.end_date, individual_id: @occupation.individual_id, sector: @occupation.sector, start_date: @occupation.start_date, title: @occupation.title }
    assert_redirected_to occupation_path(assigns(:occupation))
  end

  test "should destroy occupation" do
    assert_difference('Occupation.count', -1) do
      delete :destroy, id: @occupation
    end

    assert_redirected_to occupations_path
  end
end
