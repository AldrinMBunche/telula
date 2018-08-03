require 'test_helper'

class LearnersControllerTest < ActionController::TestCase
  setup do
    @learner = learners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:learners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create learner" do
    assert_difference('Learner.count') do
      post :create, learner: { abet: @learner.abet, address_line_2: @learner.address_line_2, cellphone_number: @learner.cellphone_number, citizen_status: @learner.citizen_status, client_id: @learner.client_id, date_of_birth: @learner.date_of_birth, disability_status: @learner.disability_status, disposal_date: @learner.disposal_date, email_address: @learner.email_address, equity: @learner.equity, first_name: @learner.first_name, gender: @learner.gender, guardian_contact_no: @learner.guardian_contact_no, guardian_name: @learner.guardian_name, highest_school_grade: @learner.highest_school_grade, home_language: @learner.home_language, id_number: @learner.id_number, id_type: @learner.id_type, last_name: @learner.last_name, learner_id: @learner.learner_id, license_code: @learner.license_code, middle_names: @learner.middle_names, municipality: @learner.municipality, nationality: @learner.nationality, next_of_kin_contact_no: @learner.next_of_kin_contact_no, next_of_kin_name: @learner.next_of_kin_name, no_education: @learner.no_education, notes: @learner.notes, organising_framework_occupations: @learner.organising_framework_occupations, p_address_line_1: @learner.p_address_line_1, p_city: @learner.p_city, p_country: @learner.p_country, p_postal_code: @learner.p_postal_code, p_province: @learner.p_province, p_suburb: @learner.p_suburb, passport_number: @learner.passport_number, photo: @learner.photo, photo_name: @learner.photo_name, r_address_line_1: @learner.r_address_line_1, r_address_line_2: @learner.r_address_line_2, r_city: @learner.r_city, r_country: @learner.r_country, r_postal_code: @learner.r_postal_code, r_province: @learner.r_province, r_suburb: @learner.r_suburb, socioeconomic_status: @learner.socioeconomic_status, storage_cabinet_no: @learner.storage_cabinet_no, tertiary_qualification: @learner.tertiary_qualification, title: @learner.title, urban_rural: @learner.urban_rural }
    end

    assert_redirected_to learner_path(assigns(:learner))
  end

  test "should show learner" do
    get :show, id: @learner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @learner
    assert_response :success
  end

  test "should update learner" do
    patch :update, id: @learner, learner: { abet: @learner.abet, address_line_2: @learner.address_line_2, cellphone_number: @learner.cellphone_number, citizen_status: @learner.citizen_status, client_id: @learner.client_id, date_of_birth: @learner.date_of_birth, disability_status: @learner.disability_status, disposal_date: @learner.disposal_date, email_address: @learner.email_address, equity: @learner.equity, first_name: @learner.first_name, gender: @learner.gender, guardian_contact_no: @learner.guardian_contact_no, guardian_name: @learner.guardian_name, highest_school_grade: @learner.highest_school_grade, home_language: @learner.home_language, id_number: @learner.id_number, id_type: @learner.id_type, last_name: @learner.last_name, learner_id: @learner.learner_id, license_code: @learner.license_code, middle_names: @learner.middle_names, municipality: @learner.municipality, nationality: @learner.nationality, next_of_kin_contact_no: @learner.next_of_kin_contact_no, next_of_kin_name: @learner.next_of_kin_name, no_education: @learner.no_education, notes: @learner.notes, organising_framework_occupations: @learner.organising_framework_occupations, p_address_line_1: @learner.p_address_line_1, p_city: @learner.p_city, p_country: @learner.p_country, p_postal_code: @learner.p_postal_code, p_province: @learner.p_province, p_suburb: @learner.p_suburb, passport_number: @learner.passport_number, photo: @learner.photo, photo_name: @learner.photo_name, r_address_line_1: @learner.r_address_line_1, r_address_line_2: @learner.r_address_line_2, r_city: @learner.r_city, r_country: @learner.r_country, r_postal_code: @learner.r_postal_code, r_province: @learner.r_province, r_suburb: @learner.r_suburb, socioeconomic_status: @learner.socioeconomic_status, storage_cabinet_no: @learner.storage_cabinet_no, tertiary_qualification: @learner.tertiary_qualification, title: @learner.title, urban_rural: @learner.urban_rural }
    assert_redirected_to learner_path(assigns(:learner))
  end

  test "should destroy learner" do
    assert_difference('Learner.count', -1) do
      delete :destroy, id: @learner
    end

    assert_redirected_to learners_path
  end
end
