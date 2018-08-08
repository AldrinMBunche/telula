require 'test_helper'

class QualificationsControllerTest < ActionController::TestCase
  setup do
    @qualification = qualifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qualifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qualification" do
    assert_difference('Qualification.count') do
      post :create, qualification: { accredited: @qualification.accredited, accredited_end_on: @qualification.accredited_end_on, accredited_start_on: @qualification.accredited_start_on, artisan_trade: @qualification.artisan_trade, can_expire: @qualification.can_expire, certificate_template_id: @qualification.certificate_template_id, code: @qualification.code, created_by: @qualification.created_by, created_on: @qualification.created_on, credits: @qualification.credits, display_name: @qualification.display_name, is_single_unit: @qualification.is_single_unit, nqf_level: @qualification.nqf_level, qualification_id: @qualification.qualification_id, qualification_type: @qualification.qualification_type, saqa_aligned: @qualification.saqa_aligned, saqa_enroll_end_on: @qualification.saqa_enroll_end_on, saqa_reg_end_on: @qualification.saqa_reg_end_on, saqa_reg_start_on: @qualification.saqa_reg_start_on, status: @qualification.status, title: @qualification.title, use_apprenticeship_fields: @qualification.use_apprenticeship_fields, use_assessor: @qualification.use_assessor, use_formative_summative: @qualification.use_formative_summative, use_learnership_fields: @qualification.use_learnership_fields, use_logbook_fields: @qualification.use_logbook_fields, use_machine_attributes: @qualification.use_machine_attributes, use_training_planner: @qualification.use_training_planner, valid_months: @qualification.valid_months }
    end

    assert_redirected_to qualification_path(assigns(:qualification))
  end

  test "should show qualification" do
    get :show, id: @qualification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qualification
    assert_response :success
  end

  test "should update qualification" do
    patch :update, id: @qualification, qualification: { accredited: @qualification.accredited, accredited_end_on: @qualification.accredited_end_on, accredited_start_on: @qualification.accredited_start_on, artisan_trade: @qualification.artisan_trade, can_expire: @qualification.can_expire, certificate_template_id: @qualification.certificate_template_id, code: @qualification.code, created_by: @qualification.created_by, created_on: @qualification.created_on, credits: @qualification.credits, display_name: @qualification.display_name, is_single_unit: @qualification.is_single_unit, nqf_level: @qualification.nqf_level, qualification_id: @qualification.qualification_id, qualification_type: @qualification.qualification_type, saqa_aligned: @qualification.saqa_aligned, saqa_enroll_end_on: @qualification.saqa_enroll_end_on, saqa_reg_end_on: @qualification.saqa_reg_end_on, saqa_reg_start_on: @qualification.saqa_reg_start_on, status: @qualification.status, title: @qualification.title, use_apprenticeship_fields: @qualification.use_apprenticeship_fields, use_assessor: @qualification.use_assessor, use_formative_summative: @qualification.use_formative_summative, use_learnership_fields: @qualification.use_learnership_fields, use_logbook_fields: @qualification.use_logbook_fields, use_machine_attributes: @qualification.use_machine_attributes, use_training_planner: @qualification.use_training_planner, valid_months: @qualification.valid_months }
    assert_redirected_to qualification_path(assigns(:qualification))
  end

  test "should destroy qualification" do
    assert_difference('Qualification.count', -1) do
      delete :destroy, id: @qualification
    end

    assert_redirected_to qualifications_path
  end
end
