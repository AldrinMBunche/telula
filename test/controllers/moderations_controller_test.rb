require 'test_helper'

class ModerationsControllerTest < ActionController::TestCase
  setup do
    @moderation = moderations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moderations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moderation" do
    assert_difference('Moderation.count') do
      post :create, moderation: { external_by: @moderation.external_by, external_on: @moderation.external_on, external_outcome: @moderation.external_outcome, external_recommendation: @moderation.external_recommendation, internal_by: @moderation.internal_by, internal_on: @moderation.internal_on, internal_outcome: @moderation.internal_outcome, internal_recommendation: @moderation.internal_recommendation, moderation_id: @moderation.moderation_id, trainer_id: @moderation.trainer_id, training_id: @moderation.training_id, unit_id: @moderation.unit_id }
    end

    assert_redirected_to moderation_path(assigns(:moderation))
  end

  test "should show moderation" do
    get :show, id: @moderation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @moderation
    assert_response :success
  end

  test "should update moderation" do
    patch :update, id: @moderation, moderation: { external_by: @moderation.external_by, external_on: @moderation.external_on, external_outcome: @moderation.external_outcome, external_recommendation: @moderation.external_recommendation, internal_by: @moderation.internal_by, internal_on: @moderation.internal_on, internal_outcome: @moderation.internal_outcome, internal_recommendation: @moderation.internal_recommendation, moderation_id: @moderation.moderation_id, trainer_id: @moderation.trainer_id, training_id: @moderation.training_id, unit_id: @moderation.unit_id }
    assert_redirected_to moderation_path(assigns(:moderation))
  end

  test "should destroy moderation" do
    assert_difference('Moderation.count', -1) do
      delete :destroy, id: @moderation
    end

    assert_redirected_to moderations_path
  end
end
