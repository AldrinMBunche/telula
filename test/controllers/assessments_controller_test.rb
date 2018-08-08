require 'test_helper'

class AssessmentsControllerTest < ActionController::TestCase
  setup do
    @assessment = assessments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assessments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assessment" do
    assert_difference('Assessment.count') do
      post :create, assessment: { assesor_recommendations: @assessment.assesor_recommendations, assess_date: @assessment.assess_date, assessment_id: @assessment.assessment_id, attended: @assessment.attended, formative_attempts: @assessment.formative_attempts, formative_results: @assessment.formative_results, learner_id: @assessment.learner_id, mentor_notes: @assessment.mentor_notes, moderated: @assessment.moderated, moderated_ext: @assessment.moderated_ext, poe: @assessment.poe, poe_not_submit_reason: @assessment.poe_not_submit_reason, reason_not_completed: @assessment.reason_not_completed, results: @assessment.results, rpl: @assessment.rpl, summative_attempts: @assessment.summative_attempts, summative_results: @assessment.summative_results, trainer_id: @assessment.trainer_id, training_id: @assessment.training_id, unit_id: @assessment.unit_id }
    end

    assert_redirected_to assessment_path(assigns(:assessment))
  end

  test "should show assessment" do
    get :show, id: @assessment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assessment
    assert_response :success
  end

  test "should update assessment" do
    patch :update, id: @assessment, assessment: { assesor_recommendations: @assessment.assesor_recommendations, assess_date: @assessment.assess_date, assessment_id: @assessment.assessment_id, attended: @assessment.attended, formative_attempts: @assessment.formative_attempts, formative_results: @assessment.formative_results, learner_id: @assessment.learner_id, mentor_notes: @assessment.mentor_notes, moderated: @assessment.moderated, moderated_ext: @assessment.moderated_ext, poe: @assessment.poe, poe_not_submit_reason: @assessment.poe_not_submit_reason, reason_not_completed: @assessment.reason_not_completed, results: @assessment.results, rpl: @assessment.rpl, summative_attempts: @assessment.summative_attempts, summative_results: @assessment.summative_results, trainer_id: @assessment.trainer_id, training_id: @assessment.training_id, unit_id: @assessment.unit_id }
    assert_redirected_to assessment_path(assigns(:assessment))
  end

  test "should destroy assessment" do
    assert_difference('Assessment.count', -1) do
      delete :destroy, id: @assessment
    end

    assert_redirected_to assessments_path
  end
end
