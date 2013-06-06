require 'test_helper'

class IndividualsControllerTest < ActionController::TestCase
  setup do
    @individual = individuals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:individuals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create individual" do
    assert_difference('Individual.count') do
      post :create, individual: { applied_date: @individual.applied_date, current_city: @individual.current_city, current_street_address: @individual.current_street_address, current_zip: @individual.current_zip, email: @individual.email, email_newsletter: @individual.email_newsletter, emergency_contact_city: @individual.emergency_contact_city, emergency_contact_name: @individual.emergency_contact_name, emergency_contact_street_address: @individual.emergency_contact_street_address, emergency_contact_zip: @individual.emergency_contact_zip, first_name: @individual.first_name, inactive_date: @individual.inactive_date, last_name: @individual.last_name, mail_newsletter: @individual.mail_newsletter, permanent_city: @individual.permanent_city, permanent_street_address: @individual.permanent_street_address, permanent_zip: @individual.permanent_zip, phone_home: @individual.phone_home, phone_mobile: @individual.phone_mobile, phone_mobile: @individual.phone_mobile, phone_work: @individual.phone_work, processed_date: @individual.processed_date, salutation: @individual.salutation }
    end

    assert_redirected_to individual_path(assigns(:individual))
  end

  test "should show individual" do
    get :show, id: @individual
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @individual
    assert_response :success
  end

  test "should update individual" do
    put :update, id: @individual, individual: { applied_date: @individual.applied_date, current_city: @individual.current_city, current_street_address: @individual.current_street_address, current_zip: @individual.current_zip, email: @individual.email, email_newsletter: @individual.email_newsletter, emergency_contact_city: @individual.emergency_contact_city, emergency_contact_name: @individual.emergency_contact_name, emergency_contact_street_address: @individual.emergency_contact_street_address, emergency_contact_zip: @individual.emergency_contact_zip, first_name: @individual.first_name, inactive_date: @individual.inactive_date, last_name: @individual.last_name, mail_newsletter: @individual.mail_newsletter, permanent_city: @individual.permanent_city, permanent_street_address: @individual.permanent_street_address, permanent_zip: @individual.permanent_zip, phone_home: @individual.phone_home, phone_mobile: @individual.phone_mobile, phone_mobile: @individual.phone_mobile, phone_work: @individual.phone_work, processed_date: @individual.processed_date, salutation: @individual.salutation }
    assert_redirected_to individual_path(assigns(:individual))
  end

  test "should destroy individual" do
    assert_difference('Individual.count', -1) do
      delete :destroy, id: @individual
    end

    assert_redirected_to individuals_path
  end
end
