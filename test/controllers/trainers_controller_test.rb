require 'test_helper'

class TrainersControllerTest < ActionController::TestCase
  setup do
    @trainer = trainers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trainers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trainer" do
    assert_difference('Trainer.count') do
      post :create, trainer: { client_id: @trainer.client_id, contact_no: @trainer.contact_no, created_by: @trainer.created_by, created_on: @trainer.created_on, date_of_birth: @trainer.date_of_birth, email_address: @trainer.email_address, first_name: @trainer.first_name, id_number: @trainer.id_number, id_type: @trainer.id_type, last_name: @trainer.last_name, licence_code: @trainer.licence_code, middle_names: @trainer.middle_names, notes: @trainer.notes, staff_rate: @trainer.staff_rate, staff_rate_type: @trainer.staff_rate_type, status: @trainer.status, status_reason: @trainer.status_reason, trainer_id: @trainer.trainer_id, training_speciality_area: @trainer.training_speciality_area, type: @trainer.type }
    end

    assert_redirected_to trainer_path(assigns(:trainer))
  end

  test "should show trainer" do
    get :show, id: @trainer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trainer
    assert_response :success
  end

  test "should update trainer" do
    patch :update, id: @trainer, trainer: { client_id: @trainer.client_id, contact_no: @trainer.contact_no, created_by: @trainer.created_by, created_on: @trainer.created_on, date_of_birth: @trainer.date_of_birth, email_address: @trainer.email_address, first_name: @trainer.first_name, id_number: @trainer.id_number, id_type: @trainer.id_type, last_name: @trainer.last_name, licence_code: @trainer.licence_code, middle_names: @trainer.middle_names, notes: @trainer.notes, staff_rate: @trainer.staff_rate, staff_rate_type: @trainer.staff_rate_type, status: @trainer.status, status_reason: @trainer.status_reason, trainer_id: @trainer.trainer_id, training_speciality_area: @trainer.training_speciality_area, type: @trainer.type }
    assert_redirected_to trainer_path(assigns(:trainer))
  end

  test "should destroy trainer" do
    assert_difference('Trainer.count', -1) do
      delete :destroy, id: @trainer
    end

    assert_redirected_to trainers_path
  end
end
