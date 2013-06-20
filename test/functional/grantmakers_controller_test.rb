require 'test_helper'

class GrantmakersControllerTest < ActionController::TestCase
  setup do
    @grantmaker = grantmakers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grantmakers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grantmaker" do
    assert_difference('Grantmaker.count') do
      post :create, grantmaker: { city: @grantmaker.city, contact_email: @grantmaker.contact_email, contact_first_name: @grantmaker.contact_first_name, contact_last_name: @grantmaker.contact_last_name, contact_phone_number: @grantmaker.contact_phone_number, email: @grantmaker.email, mission: @grantmaker.mission, name: @grantmaker.name, notes: @grantmaker.notes, phone: @grantmaker.phone, rank: @grantmaker.rank, state: @grantmaker.state, street_address: @grantmaker.street_address, unsolicited_proposals: @grantmaker.unsolicited_proposals, website: @grantmaker.website, zip_code: @grantmaker.zip_code }
    end

    assert_redirected_to grantmaker_path(assigns(:grantmaker))
  end

  test "should show grantmaker" do
    get :show, id: @grantmaker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grantmaker
    assert_response :success
  end

  test "should update grantmaker" do
    put :update, id: @grantmaker, grantmaker: { city: @grantmaker.city, contact_email: @grantmaker.contact_email, contact_first_name: @grantmaker.contact_first_name, contact_last_name: @grantmaker.contact_last_name, contact_phone_number: @grantmaker.contact_phone_number, email: @grantmaker.email, mission: @grantmaker.mission, name: @grantmaker.name, notes: @grantmaker.notes, phone: @grantmaker.phone, rank: @grantmaker.rank, state: @grantmaker.state, street_address: @grantmaker.street_address, unsolicited_proposals: @grantmaker.unsolicited_proposals, website: @grantmaker.website, zip_code: @grantmaker.zip_code }
    assert_redirected_to grantmaker_path(assigns(:grantmaker))
  end

  test "should destroy grantmaker" do
    assert_difference('Grantmaker.count', -1) do
      delete :destroy, id: @grantmaker
    end

    assert_redirected_to grantmakers_path
  end
end
