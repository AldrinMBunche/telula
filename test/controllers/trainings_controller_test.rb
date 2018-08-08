require 'test_helper'

class TrainingsControllerTest < ActionController::TestCase
  setup do
    @training = trainings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trainings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create training" do
    assert_difference('Training.count') do
      post :create, training: { assessment_method: @training.assessment_method, branch_id: @training.branch_id, cert_valid_from: @training.cert_valid_from, cert_valid_to: @training.cert_valid_to, client_id: @training.client_id, duration: @training.duration, end_on: @training.end_on, event_type: @training.event_type, internal: @training.internal, learnership_branch: @training.learnership_branch, learnership_site: @training.learnership_site, ls_end_on: @training.ls_end_on, ls_start_on: @training.ls_start_on, machine_attachment: @training.machine_attachment, machine_capacity: @training.machine_capacity, machine_code: @training.machine_code, notes: @training.notes, number_of_learners: @training.number_of_learners, qa: @training.qa, qualification_id: @training.qualification_id, re_certification: @training.re_certification, remind_expiry: @training.remind_expiry, start_on: @training.start_on, training_id: @training.training_id, training_status: @training.training_status, venue: @training.venue }
    end

    assert_redirected_to training_path(assigns(:training))
  end

  test "should show training" do
    get :show, id: @training
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @training
    assert_response :success
  end

  test "should update training" do
    patch :update, id: @training, training: { assessment_method: @training.assessment_method, branch_id: @training.branch_id, cert_valid_from: @training.cert_valid_from, cert_valid_to: @training.cert_valid_to, client_id: @training.client_id, duration: @training.duration, end_on: @training.end_on, event_type: @training.event_type, internal: @training.internal, learnership_branch: @training.learnership_branch, learnership_site: @training.learnership_site, ls_end_on: @training.ls_end_on, ls_start_on: @training.ls_start_on, machine_attachment: @training.machine_attachment, machine_capacity: @training.machine_capacity, machine_code: @training.machine_code, notes: @training.notes, number_of_learners: @training.number_of_learners, qa: @training.qa, qualification_id: @training.qualification_id, re_certification: @training.re_certification, remind_expiry: @training.remind_expiry, start_on: @training.start_on, training_id: @training.training_id, training_status: @training.training_status, venue: @training.venue }
    assert_redirected_to training_path(assigns(:training))
  end

  test "should destroy training" do
    assert_difference('Training.count', -1) do
      delete :destroy, id: @training
    end

    assert_redirected_to trainings_path
  end
end
